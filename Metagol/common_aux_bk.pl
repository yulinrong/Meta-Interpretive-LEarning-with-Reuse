:- ['0-def_prim_pred.pl'].
:- ['aux_predicates.pl'].
:- use_module('metagol').

:- use_module(library(lists)).
:- use_module(library(time)).

max_time(60000).

%% metagol settings
metagol:unfold_program.

body_pred(count/2). 
body_pred(unique/2). 
body_pred(relate/2).
body_pred(intersect/2).
body_pred(union/2). 
body_pred(exist/2). 
body_pred(filter_size/2). 
body_pred(filter_color/2).
body_pred(filter_material/2).
body_pred(filter_shape/2).
body_pred(greater_than/2).
body_pred(less_than/2).
body_pred(same_shape/2).
body_pred(same_size/2).
body_pred(same_color/2).
body_pred(same_material/2).
body_pred(query_color/2).
body_pred(query_material/2). 
body_pred(query_shape/2).
body_pred(query_size/2).
body_pred(equal_color/2).
body_pred(equal_material/2).
body_pred(equal_integer/2).
body_pred(equal_size/2).
body_pred(equal_shape/2). 

%% metarules
%metarule(ident, [P,Q], [P,A,B], [[Q,A,B]]).
metarule(chain, [P,Q,R], [P,A,B], [[Q,A,C],[R,C,B]]).
