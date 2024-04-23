:- ['scene.pl'].
:- ['def_prim_pred_.pl'].
:- ['aux_predicates.pl'].
:- use_module('metagol').

:- use_module(library(lists)).
:- use_module(library(time)).

%% metagol settings
metagol:unfold_program.

%% tell Metagol to use the BK


%body_pred(scene/2). 

%body_pred(count/2). 
body_pred(unique/2). 
%body_pred(relate/2).
%body_pred(intersect/2).
%body_pred(union/2). 
body_pred(exist/2). 

body_pred(filter_size/2). 
body_pred(filter_color/2).
body_pred(filter_material/2).
body_pred(filter_shape/2).

%body_pred(greater_than/2).
%body_pred(less_than/2).

body_pred(same_shape/2).
%body_pred(same_size/2).
%body_pred(same_color/2).
%body_pred(same_material/2).

%body_pred(query_color/2).
body_pred(query_material/2). 
%body_pred(query_shape/2).
body_pred(query_size/2).

%body_pred(equal_color/2).
%body_pred(equal_material/2).
%body_pred(equal_integer/2).
%body_pred(equal_size/2).
%body_pred(equal_shape/2). 

%% metarules
%metarule(ident, [P,Q], [P,A,B], [[Q,A,B]]).
metarule(chain, [P,Q,R], [P,A,B], [[Q,A,C],[R,C,B]]).


%% interpreted BK
%%ibk([map,[],[],_],[]).
%%ibk([map,[A|As],[B|Bs],F],[[F,A,B],[map,As,Bs,F]]).



max_time(60000).



%f(X,Y) :- filter_size(X,Z),f1(Z,Y).
%f1(X,Y) :- filter_material(X,Z),f2(Z,Y).
%f2(X,Y) :- unique(X,Z),f3(Z,Y).
%f3(X,Y) :- same_shape(X,Z),exist(Z,Y).


a :- 
    X = [scene(_,_),[[0,1,2,3,4],[],none,none,none,e_material],[gray,cube,large,none,false,none,none,none,none],[none,none,none,none,false,none,none,none,none]],
    Y = [scene(_,_),[_,_,none,none,none,[rubber,[]]],[none,none,none,none,false,none,none,none,none],[none,none,none,none,false,none,none,none,none]],
    Pos = [
        target(X,Y)
        ],
    max_time(MaxTime),
    MaxTime1 is MaxTime/1000,
    catch(call_with_time_limit(MaxTime1,learn(Pos,[],G)),time_limit_exceeded,(format('%time,~f\n',[MaxTime1]),false)),
    Duration is cputime,
    format('%time,~f\n',[Duration]),
    pprint(G),
    halt.
