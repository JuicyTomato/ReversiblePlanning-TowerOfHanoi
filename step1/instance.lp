%---------------------------------------
% domain
%---------------------------------------

% utils
boolean(true).
boolean(false).

% types
type(type("object")).

% variables
variable(variable("on_d1_d2")).
variable(variable("on_d1_peg1")).
variable(variable("on_d1_peg2")).
variable(variable("on_d1_peg3")).
variable(variable("on_d2_peg1")).
variable(variable("on_d2_peg2")).
variable(variable("on_d2_peg3")).
variable(variable("clear_d1")).
variable(variable("clear_d2")).
variable(variable("clear_peg1")).
variable(variable("clear_peg2")).
variable(variable("clear_peg3")).

contains(X, value(X, B)) :- variable(X), boolean(B).

% actions
action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_peg1_to_peg2")).
precondition(action("move_d1_from_peg1_to_peg2"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
postcondition(action("move_d1_from_peg1_to_peg2"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_peg1_to_peg2")).
postcondition(action("move_d1_from_peg1_to_peg2"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_peg1_to_peg2")).
postcondition(action("move_d1_from_peg1_to_peg2"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg1_to_peg2")).
postcondition(action("move_d1_from_peg1_to_peg2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_peg1_to_peg2")).

action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_peg2_to_peg1")).
precondition(action("move_d1_from_peg2_to_peg1"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
postcondition(action("move_d1_from_peg2_to_peg1"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_peg2_to_peg1")).
postcondition(action("move_d1_from_peg2_to_peg1"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_peg2_to_peg1")).
postcondition(action("move_d1_from_peg2_to_peg1"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg2_to_peg1")).
postcondition(action("move_d1_from_peg2_to_peg1"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_peg2_to_peg1")).

action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_peg1_to_peg3")).
precondition(action("move_d1_from_peg1_to_peg3"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
postcondition(action("move_d1_from_peg1_to_peg3"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_peg1_to_peg3")).
postcondition(action("move_d1_from_peg1_to_peg3"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_peg1_to_peg3")).
postcondition(action("move_d1_from_peg1_to_peg3"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg1_to_peg3")).
postcondition(action("move_d1_from_peg1_to_peg3"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_peg1_to_peg3")).

action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_peg3_to_peg1")).
precondition(action("move_d1_from_peg3_to_peg1"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
postcondition(action("move_d1_from_peg3_to_peg1"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_peg3_to_peg1")).
postcondition(action("move_d1_from_peg3_to_peg1"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_peg3_to_peg1")).
postcondition(action("move_d1_from_peg3_to_peg1"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg3_to_peg1")).
postcondition(action("move_d1_from_peg3_to_peg1"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_peg3_to_peg1")).

action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_peg2_to_peg3")).
precondition(action("move_d1_from_peg2_to_peg3"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
postcondition(action("move_d1_from_peg2_to_peg3"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_peg2_to_peg3")).
postcondition(action("move_d1_from_peg2_to_peg3"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_peg2_to_peg3")).
postcondition(action("move_d1_from_peg2_to_peg3"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg2_to_peg3")).
postcondition(action("move_d1_from_peg2_to_peg3"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_peg2_to_peg3")).

action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_peg3_to_peg2")).
precondition(action("move_d1_from_peg3_to_peg2"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
postcondition(action("move_d1_from_peg3_to_peg2"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_peg3_to_peg2")).
postcondition(action("move_d1_from_peg3_to_peg2"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_peg3_to_peg2")).
postcondition(action("move_d1_from_peg3_to_peg2"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg3_to_peg2")).
postcondition(action("move_d1_from_peg3_to_peg2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_peg3_to_peg2")).

action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg1_to_d2")).
precondition(action("move_d1_from_peg1_to_d2"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_peg1_to_d2")).
postcondition(action("move_d1_from_peg1_to_d2"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_peg1_to_d2")).
postcondition(action("move_d1_from_peg1_to_d2"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_peg1_to_d2")).
postcondition(action("move_d1_from_peg1_to_d2"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg1_to_d2")).
postcondition(action("move_d1_from_peg1_to_d2"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_peg1_to_d2")).

action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d1_from_d2_to_peg1")).
precondition(action("move_d1_from_d2_to_peg1"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d1_from_d2_to_peg1")).
postcondition(action("move_d1_from_d2_to_peg1"), effect(unconditional), variable("on_d1_peg1"), value(variable("on_d1_peg1"), true)) :- action(action("move_d1_from_d2_to_peg1")).
postcondition(action("move_d1_from_d2_to_peg1"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_d2_to_peg1")).
postcondition(action("move_d1_from_d2_to_peg1"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_d2_to_peg1")).
postcondition(action("move_d1_from_d2_to_peg1"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d1_from_d2_to_peg1")).

action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg2_to_d2")).
precondition(action("move_d1_from_peg2_to_d2"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_peg2_to_d2")).
postcondition(action("move_d1_from_peg2_to_d2"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_peg2_to_d2")).
postcondition(action("move_d1_from_peg2_to_d2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_peg2_to_d2")).
postcondition(action("move_d1_from_peg2_to_d2"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg2_to_d2")).
postcondition(action("move_d1_from_peg2_to_d2"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_peg2_to_d2")).

action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d1_from_d2_to_peg2")).
precondition(action("move_d1_from_d2_to_peg2"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d1_from_d2_to_peg2")).
postcondition(action("move_d1_from_d2_to_peg2"), effect(unconditional), variable("on_d1_peg2"), value(variable("on_d1_peg2"), true)) :- action(action("move_d1_from_d2_to_peg2")).
postcondition(action("move_d1_from_d2_to_peg2"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_d2_to_peg2")).
postcondition(action("move_d1_from_d2_to_peg2"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_d2_to_peg2")).
postcondition(action("move_d1_from_d2_to_peg2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d1_from_d2_to_peg2")).

action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_peg3_to_d2")).
precondition(action("move_d1_from_peg3_to_d2"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_peg3_to_d2")).
postcondition(action("move_d1_from_peg3_to_d2"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_peg3_to_d2")).
postcondition(action("move_d1_from_peg3_to_d2"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_peg3_to_d2")).
postcondition(action("move_d1_from_peg3_to_d2"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_peg3_to_d2")).
postcondition(action("move_d1_from_peg3_to_d2"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_peg3_to_d2")).

action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("on_d1_d2"), value(variable("on_d1_d2"), true)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("clear_d2"), value(variable("clear_d2"), false)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("clear_d1"), value(variable("clear_d1"), true)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d1_from_d2_to_peg3")).
precondition(action("move_d1_from_d2_to_peg3"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d1_from_d2_to_peg3")).
postcondition(action("move_d1_from_d2_to_peg3"), effect(unconditional), variable("on_d1_peg3"), value(variable("on_d1_peg3"), true)) :- action(action("move_d1_from_d2_to_peg3")).
postcondition(action("move_d1_from_d2_to_peg3"), effect(unconditional), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d1_from_d2_to_peg3")).
postcondition(action("move_d1_from_d2_to_peg3"), effect(unconditional), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d1_from_d2_to_peg3")).
postcondition(action("move_d1_from_d2_to_peg3"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d1_from_d2_to_peg3")).

action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), true)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d2_from_peg1_to_peg2")).
precondition(action("move_d2_from_peg1_to_peg2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
postcondition(action("move_d2_from_peg1_to_peg2"), effect(unconditional), variable("on_d2_peg2"), value(variable("on_d2_peg2"), true)) :- action(action("move_d2_from_peg1_to_peg2")).
postcondition(action("move_d2_from_peg1_to_peg2"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d2_from_peg1_to_peg2")).
postcondition(action("move_d2_from_peg1_to_peg2"), effect(unconditional), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg1_to_peg2")).
postcondition(action("move_d2_from_peg1_to_peg2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d2_from_peg1_to_peg2")).

action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), true)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d2_from_peg2_to_peg1")).
precondition(action("move_d2_from_peg2_to_peg1"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
postcondition(action("move_d2_from_peg2_to_peg1"), effect(unconditional), variable("on_d2_peg1"), value(variable("on_d2_peg1"), true)) :- action(action("move_d2_from_peg2_to_peg1")).
postcondition(action("move_d2_from_peg2_to_peg1"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d2_from_peg2_to_peg1")).
postcondition(action("move_d2_from_peg2_to_peg1"), effect(unconditional), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg2_to_peg1")).
postcondition(action("move_d2_from_peg2_to_peg1"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d2_from_peg2_to_peg1")).

action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), true)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d2_from_peg1_to_peg3")).
precondition(action("move_d2_from_peg1_to_peg3"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
postcondition(action("move_d2_from_peg1_to_peg3"), effect(unconditional), variable("on_d2_peg3"), value(variable("on_d2_peg3"), true)) :- action(action("move_d2_from_peg1_to_peg3")).
postcondition(action("move_d2_from_peg1_to_peg3"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d2_from_peg1_to_peg3")).
postcondition(action("move_d2_from_peg1_to_peg3"), effect(unconditional), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg1_to_peg3")).
postcondition(action("move_d2_from_peg1_to_peg3"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d2_from_peg1_to_peg3")).

action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), true)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("clear_peg1"), value(variable("clear_peg1"), true)) :- action(action("move_d2_from_peg3_to_peg1")).
precondition(action("move_d2_from_peg3_to_peg1"), variable("on_d1_peg1"), value(variable("on_d1_peg1"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
postcondition(action("move_d2_from_peg3_to_peg1"), effect(unconditional), variable("on_d2_peg1"), value(variable("on_d2_peg1"), true)) :- action(action("move_d2_from_peg3_to_peg1")).
postcondition(action("move_d2_from_peg3_to_peg1"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d2_from_peg3_to_peg1")).
postcondition(action("move_d2_from_peg3_to_peg1"), effect(unconditional), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg3_to_peg1")).
postcondition(action("move_d2_from_peg3_to_peg1"), effect(unconditional), variable("clear_peg1"), value(variable("clear_peg1"), false)) :- action(action("move_d2_from_peg3_to_peg1")).

action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), true)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d2_from_peg2_to_peg3")).
precondition(action("move_d2_from_peg2_to_peg3"), variable("on_d1_peg3"), value(variable("on_d1_peg3"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
postcondition(action("move_d2_from_peg2_to_peg3"), effect(unconditional), variable("on_d2_peg3"), value(variable("on_d2_peg3"), true)) :- action(action("move_d2_from_peg2_to_peg3")).
postcondition(action("move_d2_from_peg2_to_peg3"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d2_from_peg2_to_peg3")).
postcondition(action("move_d2_from_peg2_to_peg3"), effect(unconditional), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg2_to_peg3")).
postcondition(action("move_d2_from_peg2_to_peg3"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d2_from_peg2_to_peg3")).

action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("on_d2_peg3"), value(variable("on_d2_peg3"), true)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("on_d2_peg1"), value(variable("on_d2_peg1"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("on_d2_peg2"), value(variable("on_d2_peg2"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("clear_peg3"), value(variable("clear_peg3"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("clear_d2"), value(variable("clear_d2"), true)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("on_d1_d2"), value(variable("on_d1_d2"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("clear_peg2"), value(variable("clear_peg2"), true)) :- action(action("move_d2_from_peg3_to_peg2")).
precondition(action("move_d2_from_peg3_to_peg2"), variable("on_d1_peg2"), value(variable("on_d1_peg2"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
postcondition(action("move_d2_from_peg3_to_peg2"), effect(unconditional), variable("on_d2_peg2"), value(variable("on_d2_peg2"), true)) :- action(action("move_d2_from_peg3_to_peg2")).
postcondition(action("move_d2_from_peg3_to_peg2"), effect(unconditional), variable("clear_peg3"), value(variable("clear_peg3"), true)) :- action(action("move_d2_from_peg3_to_peg2")).
postcondition(action("move_d2_from_peg3_to_peg2"), effect(unconditional), variable("on_d2_peg3"), value(variable("on_d2_peg3"), false)) :- action(action("move_d2_from_peg3_to_peg2")).
postcondition(action("move_d2_from_peg3_to_peg2"), effect(unconditional), variable("clear_peg2"), value(variable("clear_peg2"), false)) :- action(action("move_d2_from_peg3_to_peg2")).

%---------------------------------------
% problem
%---------------------------------------

% initial state
initialState(variable("on_d2_peg1"), value(variable("on_d2_peg1"), true)).
initialState(variable("on_d1_d2"), value(variable("on_d1_d2"), true)).
initialState(variable("clear_d1"), value(variable("clear_d1"), true)).
initialState(variable("clear_peg2"), value(variable("clear_peg2"), true)).
initialState(variable("clear_peg3"), value(variable("clear_peg3"), true)).

initialState(X, value(X, false)) :- variable(X), not initialState(X, value(X, true)).

% goal
goal(variable("on_d2_peg3"), value(variable("on_d2_peg3"), true)).
goal(variable("on_d1_d2"), value(variable("on_d1_d2"), true)).
goal(variable("clear_d1"), value(variable("clear_d1"), true)).
goal(variable("clear_peg1"), value(variable("clear_peg1"), true)).
goal(variable("clear_peg2"), value(variable("clear_peg2"), true)).
