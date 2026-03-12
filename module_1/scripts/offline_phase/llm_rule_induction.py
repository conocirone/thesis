"""
llm_rule_induction.py
=====================
LLM + Clingo Rule Induction using Qwen3-Coder-Next (local inference)
"""
import subprocess
import re
import os
import sys
import time
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, GenerationConfig
from pathlib import Path
from collections import defaultdict

# =============================================================================
# DEBUG CONFIGURATION
# =============================================================================
DEBUG = os.environ.get("DEBUG_LLM", "false").lower() == "true"
DEBUG_CLINGO = os.environ.get("DEBUG_CLINGO", "false").lower() == "true"

# =============================================================================
# PATHS
# =============================================================================
SCRIPT_DIR = Path(__file__).parent
MODULE_DIR = SCRIPT_DIR.parent.parent
RULES_DIR = MODULE_DIR / "rules"
INPUT_EXAMPLES_FILE = RULES_DIR / "ilasp_tidy_up.las"
OUTPUT_RULES_FILE = RULES_DIR / "learned_rules_llm.txt"

# =============================================================================
# MODEL CONFIGURATION: Qwen3-Coder-Next
# =============================================================================
MODEL_NAME = os.environ.get("HF_MODEL_NAME", "Qwen/Qwen3-Coder-Next")
QUANTIZATION_MODE = os.environ.get("HF_QUANTIZATION", "4bit").lower()
MAX_CONTEXT_LENGTH = int(os.environ.get("HF_MAX_CONTEXT", "32768"))
MAX_NEW_TOKENS = int(os.environ.get("HF_MAX_NEW_TOKENS", "4096"))
TEMPERATURE = float(os.environ.get("HF_TEMPERATURE", "1.0"))
TOP_P = float(os.environ.get("HF_TOP_P", "0.95"))
TOP_K = int(os.environ.get("HF_TOP_K", "40"))

# Global model state (loaded once)
_tokenizer = None
_model = None

# =============================================================================
# MODEL LOADING FUNCTION (FIXED: uses local quant_mode variable)
# =============================================================================
def load_qwen3_coder_next():
    """Load Qwen3-Coder-Next for CPU-only inference (cluster-safe)."""
    global _tokenizer, _model
    
    if _model is not None and _tokenizer is not None:
        return _model, _tokenizer
    
    quant_mode = QUANTIZATION_MODE
    hf_token = os.environ.get("HF_TOKEN")
    
    print(f"[INFO] Loading {MODEL_NAME}...")
    print(f"[INFO] Requested quantization: {quant_mode}")
    print(f"[INFO] Running on CPU (cluster-safe mode)")
    
    try:
        # Prepare common kwargs
        common_kwargs = {"trust_remote_code": True}
        if hf_token:
            common_kwargs["token"] = hf_token
        
        # Load tokenizer
        print("[INFO] Loading tokenizer...")
        _tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME, **common_kwargs)
        
        # ✅ CPU-SAFE model kwargs: NO device_map, NO torch_dtype
        model_kwargs = {
            "trust_remote_code": True,
            "low_cpu_mem_usage": True,
        }
        if hf_token:
            model_kwargs["token"] = hf_token
        
        # Apply quantization via BitsAndBytesConfig (CPU-compatible)
        if quant_mode == "4bit":
            try:
                from transformers import BitsAndBytesConfig
                
                bnb_config = BitsAndBytesConfig(
                    load_in_4bit=True,
                    bnb_4bit_compute_dtype=torch.float32,  # ✅ CPU needs float32
                    bnb_4bit_quant_type="nf4",
                    bnb_4bit_use_double_quant=True,
                    # ✅ CRITICAL: Enable CPU offloading for 4-bit
                    llm_int8_enable_fp32_cpu_offload=True,
                )
                model_kwargs["quantization_config"] = bnb_config
                print("[INFO] Using 4-bit quantization with CPU offload")
                
            except ImportError:
                print("[WARN] bitsandbytes not installed; falling back to unquantized")
                quant_mode = "none"
        
        # ✅ Load model WITHOUT device_map (lets transformers decide CPU/GPU)
        print("[INFO] Loading model weights (may take 2-5 minutes on CPU)...")
        _model = AutoModelForCausalLM.from_pretrained(MODEL_NAME, **model_kwargs)
        
        # Configure generation
        _model.generation_config = GenerationConfig(
            temperature=TEMPERATURE,
            top_p=TOP_P,
            top_k=TOP_K,
            max_new_tokens=MAX_NEW_TOKENS,
            do_sample=True,
            pad_token_id=_tokenizer.eos_token_id,
            eos_token_id=_tokenizer.eos_token_id,
        )
        
        # Report where model ended up
        device = next(_model.parameters()).device
        print(f"[INFO] ✅ Loaded on {device} | Effective quant: {quant_mode}")
        print(f"[INFO] 💡 Tip: CPU inference is ~1-2 tokens/sec. Be patient!")
        return _model, _tokenizer
        
    except Exception as e:
        print(f"[ERROR] Failed to load model: {type(e).__name__}: {e}")
        if "CPU" in str(e) or "offload" in str(e).lower():
            print("[TIP] Try smaller model: export HF_MODEL_NAME='Qwen/Qwen2.5-Coder-1.5B-Instruct'")
        raise
# =============================================================================
# PARSING & VERIFICATION FUNCTIONS
# =============================================================================
def parse_ilasp_file(filename):
    """Parse ILASP format examples."""
    examples_by_loc = defaultdict(lambda: {"pos": set(), "neg": set(), "ctx": {}})
    
    with open(filename, "r") as f:
        content = f.read()
    
    pattern = re.compile(r'#pos\((e\d+)@\d+,\s*\{(.*?)\},\s*\{(.*?)\},\s*\{(.*?)\}\)\.', re.DOTALL)
    
    for match in pattern.finditer(content):
        pos_atoms_str = match.group(2).strip()
        neg_atoms_str = match.group(3).strip()
        ctx_str = match.group(4).strip()
        
        target = pos_atoms_str if pos_atoms_str else neg_atoms_str
        atom_match = re.search(r'goesIn\((.*?),\s*(.*?)\)', target)
        if not atom_match:
            continue
        
        obj_id, loc = atom_match.group(1), atom_match.group(2)
        ctx_facts = [l.strip() for l in ctx_str.split('\n') if l.strip()]
        examples_by_loc[loc]["ctx"][obj_id] = ctx_facts
        
        if pos_atoms_str:
            examples_by_loc[loc]["pos"].add(obj_id)
        if neg_atoms_str:
            examples_by_loc[loc]["neg"].add(obj_id)
    
    return examples_by_loc

def create_clingo_program(loc, rule, pos_objs, neg_objs, ctx_dict):
    """Create ASP program for verification."""
    prog = [f"% Testing: {loc}", rule, ""]
    for obj in list(pos_objs) + list(neg_objs):
        prog.extend(ctx_dict.get(obj, []))
    prog.append("")
    for obj in pos_objs:
        prog.append(f"failed_pos({obj}) :- not goesIn({obj}, {loc}).")
    for obj in neg_objs:
        prog.append(f"failed_neg({obj}) :- goesIn({obj}, {loc}).")
    return "\n".join(prog)

def run_clingo_check(loc, rule, pos_objs, neg_objs, ctx_dict):
    """Run Clingo verification with optional debug output."""
    prog = create_clingo_program(loc, rule, pos_objs, neg_objs, ctx_dict)
    tmp = Path(f"/tmp/verify_{loc}.lp")
    with open(tmp, "w") as f:
        f.write(prog)
    
    if DEBUG_CLINGO:
        print(f"\n[CLINGO] Program for '{loc}':\n{'='*50}\n{prog}\n{'='*50}", file=sys.stderr, flush=True)
    
    result = subprocess.run(
        [sys.executable, "-m", "clingo", str(tmp), "0", "--out-ifs=\n"],
        capture_output=True, text=True
    )
    
    if DEBUG_CLINGO and (result.stdout.strip() or result.stderr.strip()):
        print(f"[CLINGO] Return: {result.returncode}", file=sys.stderr, flush=True)
        if result.stdout: print(f"[CLINGO] OUT:\n{result.stdout}", file=sys.stderr, flush=True)
        if result.stderr: print(f"[CLINGO] ERR:\n{result.stderr}", file=sys.stderr, flush=True)
    
    failures = {"pos": [], "neg": []}
    for line in result.stdout.split("\n"):
        m = re.match(r'failed_pos\((\w+)\)', line)
        if m: failures["pos"].append(m.group(1))
        m = re.match(r'failed_neg\((\w+)\)', line)
        if m: failures["neg"].append(m.group(1))
    
    if "ERROR" in result.stderr or result.returncode != 0:
        return False, {"syntax_error": result.stderr}
    
    valid = len(failures["pos"]) == 0 and len(failures["neg"]) == 0
    if DEBUG_CLINGO:
        print(f"[CLINGO] {'✅ VALID' if valid else '❌ INVALID'} | pos:{len(failures['pos'])} neg:{len(failures['neg'])}\n", file=sys.stderr, flush=True)
    return valid, failures

# =============================================================================
# PROMPT & EXTRACTION
# =============================================================================
def format_prompt(loc, pos, neg, ctx, prev_err=None):
    """Format prompt using Qwen chat template."""
    pos_str = "\n".join([f"  + {o} ({', '.join(ctx[o])})" for o in pos])
    neg_str = "\n".join([f"  - {o} ({', '.join(ctx[o])})" for o in list(neg)[:20]])
    
    system = """You are an ASP expert. Write concise rules for goesIn(X, LOCATION).
Use ONLY properties from examples: hasRole, affordsTask, hasPhysicalQuality.
Format: goesIn(X, L) :- hasRole(X, R), affordsTask(X, T)."""
    
    user = f"""Location: '{loc}'
Positives:
{pos_str}
Negatives:
{neg_str}

Rules:
1. Use EXACT property names from examples.
2. Use variable 'X'.
3. Multiple rules on separate lines OK.
4. NEVER use 'not goesIn(...)'.
5. Example: goesIn(X, fridge) :- hasRole(X, consumableRole)."""
    
    if prev_err:
        if "syntax_error" in prev_err:
            user += f"\n\n⚠️ Syntax error before: {prev_err['syntax_error'][:200]}. Fix: end with '.', valid ASP."
        else:
            fp, fn = prev_err.get('pos',[]), prev_err.get('neg',[])
            user += "\n\n⚠️ Previous rule failed:"
            if fp and not fn:
                user += f"\n- Too narrow: missed {fp}\n- FIX: Add rule for missing positives"
            elif fn and not fp:
                user += f"\n- Too broad: included {fn}"
                for o in fn:
                    props = ctx.get(o,[])
                    user += f"\n  {o}: {', '.join(props) if props else 'NO PROPS'}"
                user += "\n- FIX: Add condition to exclude these"
            else:
                user += f"\n- Missed:{fp}, Wrong:{fn}\n- FIX: Refine rule body"
    
    messages = [{"role":"system","content":system},{"role":"user","content":user}]
    if hasattr(_tokenizer, 'apply_chat_template'):
        return _tokenizer.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)
    return "\n".join([f"{m['role'].upper()}: {m['content']}" for m in messages]) + "\nASSISTANT:"

def extract_rules(text):
    """Extract goesIn ASP rules from LLM output."""
    rules = []
    for line in text.strip().split('\n'):
        line = re.sub(r'```(?:asp|prolog)?', '', line).replace('```','').strip()
        if 'goesIn(' in line and ':' in line:
            rule = re.sub(r'\s+',' ',line).rstrip('.') + '.'
            if rule and not rule.startswith('%'):
                rules.append(rule)
    return "\n".join(rules) if rules else text.strip()

# =============================================================================
# LLM CALL WRAPPER
# =============================================================================
def call_llm(prompt, retries=3):
    """Call Qwen3-Coder-Next with generation."""
    global _model, _tokenizer
    if _model is None:
        _model, _tokenizer = load_qwen3_coder_next()
    
    for attempt in range(retries):
        try:
            inputs = _tokenizer(prompt, return_tensors="pt", truncation=True, max_length=MAX_CONTEXT_LENGTH).to(_model.device)
            with torch.no_grad():
                out = _model.generate(**inputs, max_new_tokens=MAX_NEW_TOKENS)
            new_tokens = out[0][inputs.input_ids.shape[1]:]
            return _tokenizer.decode(new_tokens.tolist(), skip_special_tokens=True).strip()
        except torch.cuda.OutOfMemoryError:
            print("[ERROR] GPU OOM. Try smaller context or 4-bit.", file=sys.stderr, flush=True)
            raise
        except Exception as e:
            if attempt < retries-1:
                print(f"[WARN] Retry {attempt+1}/{retries}: {e}", file=sys.stderr, flush=True)
                time.sleep(2**attempt)
            else:
                print(f"[ERROR] Failed after {retries} attempts: {e}", file=sys.stderr, flush=True)
                raise
    raise Exception("Max retries exceeded")

# =============================================================================
# MAIN
# =============================================================================
def main():
    print("="*70)
    print("LLM+Clingo Rule Induction | Qwen3-Coder-Next")
    print("="*70)
    print(f"Model: {MODEL_NAME} | Quant: {QUANTIZATION_MODE}")
    print(f"Context:{MAX_CONTEXT_LENGTH} | New tokens:{MAX_NEW_TOKENS}")
    print(f"Device: {torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'CPU'}")
    print(f"Debug: LLM={'ON' if DEBUG else 'OFF'} | Clingo={'ON' if DEBUG_CLINGO else 'OFF'}")
    print("="*70)
    
    try:
        load_qwen3_coder_next()
    except Exception as e:
        print(f"\n[ERROR] Model init failed: {e}")
        print("[TIP] Try: export HF_MODEL_NAME='Qwen/Qwen2.5-Coder-7B-Instruct'")
        return
    
    print("[1/3] Parsing examples...")
    examples = parse_ilasp_file(INPUT_EXAMPLES_FILE)
    print(f"      Found {len(examples)} locations.")
    
    results = {}
    print("\n[2/3] Inducing rules...")
    
    for loc, data in examples.items():
        if not data["pos"]: continue
        print(f"\n--- {loc} ({len(data['pos'])}+, {len(data['neg'])}-) ---")
        failures = None
        
        for attempt in range(1, 101):
            prompt = format_prompt(loc, data["pos"], data["neg"], data["ctx"], failures)
            print(f"  Attempt {attempt}/100...", end=" ", flush=True)
            
            try:
                raw = call_llm(prompt)
                if DEBUG:
                    print(f"\n[LLM] Output:\n{'-'*50}\n{raw[:800]}{'...' if len(raw)>800 else ''}\n{'-'*50}", file=sys.stderr, flush=True)
            except Exception as e:
                print(f"[FAIL] {type(e).__name__}: {str(e)[:80]}", flush=True)
                failures = {"syntax_error": str(e)}
                continue
            
            rule = extract_rules(raw)
            print(f"Rule: {rule[:120]}{'...' if len(rule)>120 else ''}")
            
            valid, failures = run_clingo_check(loc, rule, data["pos"], data["neg"], data["ctx"])
            if valid:
                print("  [✅] Verified!")
                results[loc] = rule
                break
            else:
                if "syntax_error" in failures:
                    print("  [❌] Syntax error")
                else:
                    pf, nf = len(failures['pos']), len(failures['neg'])
                    print(f"  [❌] pos_miss:{pf} neg_wrong:{nf}")
            time.sleep(0.2)
        
        if loc not in results:
            print(f"  [GAVE UP] No valid rule after 100 attempts")
    
    print("\n[3/3] Saving results...")
    with open(OUTPUT_RULES_FILE, "w") as f:
        f.write(f"% Qwen3-Coder-Next Rules | Model:{MODEL_NAME} | Quant:{QUANTIZATION_MODE}\n")
        f.write(f"% Verified by Clingo\n% {'='*50}\n\n")
        for loc, rule in results.items():
            f.write(f"% --- {loc} ---\n{rule}\n\n")
    print(f"      ✅ Saved {len(results)}/{len(examples)} rules to {OUTPUT_RULES_FILE}")

if __name__ == "__main__":
    main()
