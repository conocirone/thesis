% Dynamic facts (provided by LLM Task Analysis)
:- dynamic task_needs_grasping/1.
:- dynamic task_needs_precision/1.
:- dynamic task_needs_mobility/1.
:- dynamic task_needs_bimanual/1.
:- dynamic task_needs_contact/1.
:- dynamic task_needs_rigid_grip/1.

% Dynamic facts (provided by dataset / robot config)
:- dynamic robot_mobile/1, robot_arms/1, robot_dof/1, robot_gripper_type/1, robot_rigid/1.

% --- Mapping rules (Semantics -> Hardware) ---

% Gripper Type
required_gripper_type(two_finger) :- task_needs_grasping(true).
required_gripper_type(none) :- \+ task_needs_grasping(true).

% DoF
required_dof(7) :- task_needs_grasping(true), task_needs_precision(true).
required_dof(6) :- task_needs_grasping(true), \+ task_needs_precision(true).
required_dof(6) :- \+ task_needs_grasping(true).

% Mobility
required_mobile(true) :- task_needs_mobility(true).
required_mobile(false) :- \+ task_needs_mobility(true).

% Arms
required_arms(2) :- task_needs_bimanual(true).
required_arms(1) :- \+ task_needs_bimanual(true), task_needs_contact(true).
required_arms(0) :- \+ task_needs_contact(true).

% Rigidity
required_rigid(true) :- task_needs_rigid_grip(true).
required_rigid(false) :- \+ task_needs_rigid_grip(true).

% --- Main Verification Rule ---
can_execute :-
    check_mobile,
    check_arms,
    check_dof,
    check_gripper,
    check_rigid.

% --- Compatibility Checks ---

% A mobile robot can do stationary tasks, but a stationary robot can't do mobile tasks
check_mobile :- required_mobile(true), robot_mobile(true).
check_mobile :- required_mobile(false). 

% Robot must have at least as many arms as required
check_arms :- required_arms(R), robot_arms(A), A >= R.

% Robot must have at least as many DoFs as required
check_dof :- required_dof(R), robot_dof(D), D >= R.

% If task requires a gripper, robot must have one of that type
check_gripper :- required_gripper_type(two_finger), robot_gripper_type(two_finger).
check_gripper :- required_gripper_type(none).

% If task requires a rigid grip, robot gripper must be rigid
check_rigid :- required_rigid(true), robot_rigid(true).
check_rigid :- required_rigid(false).
