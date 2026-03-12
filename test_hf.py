from huggingface_hub import InferenceClient
import os

client = InferenceClient(api_key=os.environ.get("HF_TOKEN"))

model = "Qwen/Qwen3-Coder-Next"

messages = [
	{"role": "user", "content": "Write a Python function to compute factorial"}
]

try:
	response = client.chat.completions.create(model = model, messages = messages,  temperature=0.1)
	print(response)
except Exception as e:
	print(f"Error: {e}")
