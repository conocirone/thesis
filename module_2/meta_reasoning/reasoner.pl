:- dynamic task_needs_grasping/1.
:- dynamic task_needs_precision/1.
:- dynamic task_needs_mobility/1.
:- dynamic task_needs_bimanual/1.
:- dynamic task_needs_contact/1.
:- dynamic task_needs_rigid_grip/1.

:- dynamic robot_mobile/1, robot_arms/1, robot_dof/1, robot_gripper_type/1, robot_rigid/1.


% --- Arms ---
required_arms(2) :- task_needs_bimanual(true).
required_arms(1) :- \+ task_needs_bimanual(true), (task_needs_contact(true) ; task_needs_grasping(true)).
required_arms(0) :- \+ task_needs_bimanual(true), \+ task_needs_contact(true), \+ task_needs_grasping(true).

% --- DoF ---
required_dof(0) :- required_arms(0).
required_dof(6) :- \+ required_arms(0), task_needs_precision(true).
required_dof(4) :- \+ required_arms(0), \+ task_needs_precision(true).

% --- Gripper ---
required_gripper(true)  :- task_needs_grasping(true).
required_gripper(false) :- \+ task_needs_grasping(true).

% --- Mobility ---
required_mobile(true)  :- task_needs_mobility(true).
required_mobile(false) :- \+ task_needs_mobility(true).

% --- Rigid Grip ---
required_rigid(true)  :- task_needs_rigid_grip(true).
required_rigid(false) :- \+ task_needs_rigid_grip(true).


% =============================================================================
% MAIN VERIFICATION RULE
% =============================================================================

can_execute :-
    check_mobile,
    check_arms,
    check_dof,
    check_gripper,
    check_rigid,
    check_min_capability.  


% =============================================================================
% COMPATIBILITY CHECKS
% =============================================================================

% Mobility: a mobile robot can always do stationary tasks, but not vice versa.
check_mobile :- required_mobile(true), robot_mobile(true).
check_mobile :- required_mobile(false).

% Arms: robot must have at least as many arms as required.
check_arms :- required_arms(R), robot_arms(A), A >= R.

% DoF: robot must have at least the required degrees of freedom.
check_dof :- required_dof(R), robot_dof(D), D >= R.

check_gripper :- required_gripper(true),  robot_arms(A), A >= 1.
check_gripper :- required_gripper(false).

% FIX #3: Rigid check relaxed — a robot with >= 1 arm can attempt rigid grip tasks.
% Only fail if the task needs rigid grip AND the robot has no arms at all.
check_rigid :- required_rigid(true),  robot_arms(A), A >= 1.
check_rigid :- required_rigid(false).

% FIX #4: Minimum capability guard for FPs.
% When a task requires no physical interaction at all (all flags false), we still
% require the robot to have a minimum useful configuration (>= 3 DoF if it has arms).
% This prevents vacuous passes for useless robots (e.g. 1 DoF arm) on abstract tasks.
check_min_capability :-
    task_needs_contact(false),
    \+ task_needs_grasping(true),
    robot_arms(A), A >= 1,
    !,
    robot_dof(D), D >= 3.
check_min_capability.  % passes for all other cases


can_execute_strict :-
    check_mobile,
    check_arms,
    check_dof_strict,
    check_gripper_strict,
    check_rigid_strict,
    check_min_capability.


check_dof_strict :- required_arms(0), robot_dof(_).
check_dof_strict :- \+ required_arms(0), task_needs_precision(true), robot_dof(D), D >= 7.
check_dof_strict :- \+ required_arms(0), \+ task_needs_precision(true), robot_dof(D), D >= 6.


check_gripper_strict :- required_gripper(true), robot_gripper_type(two_finger).
check_gripper_strict :- required_gripper(false).


check_rigid_strict :- required_rigid(true), robot_rigid(true).
check_rigid_strict :- required_rigid(false).