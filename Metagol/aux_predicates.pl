%body_pred(aux1/2).
%body_pred(aux2/2).
%body_pred(aux3/2).
%body_pred(aux4/2).
%body_pred(aux5/2).
%body_pred(aux6/2).
%body_pred(aux7/2).
%body_pred(aux8/2).
%body_pred(aux9/2).
%body_pred(aux10/2).
%body_pred(aux11/2).
%body_pred(aux12/2).
%body_pred(aux13/2).
%body_pred(aux14/2).
%body_pred(aux15/2).
%body_pred(aux16/2).
%body_pred(aux17/2).
%body_pred(aux18/2).
%body_pred(aux19/2).
%body_pred(aux20/2).
%body_pred(aux21/2).
%body_pred(aux22/2).
%body_pred(aux23/2).
%body_pred(aux24/2).
%body_pred(aux25/2).
%body_pred(aux26/2).

aux9(A,B):-filter_size(A,B1),filter_color(B1,B2),query_shape(B2,B).
aux1(A,B):-filter_size(A,B1),filter_color(B1,B2),query_material(B2,B).
aux2(A,B):-filter_size(A,B1),filter_color(B1,B2),query_material(B2,B).
aux3(A,B):-filter_color(A,B1),same_shape(B1,B2),exist(B2,B).
aux4(A,B):-filter_size(A,B1),filter_color(B1,B2),filter_material(B2,B3),exist(B3,B).
aux5(A,B):-filter_material(A,B1),same_size(B1,B2),exist(B2,B).
aux6(A,B):-filter_size(A,B1),relate(B1,B2),count(B2,B).
aux7(A,B):-filter_size(A,B1),filter_shape(B1,B2),query_material(B2,B).
aux8(A,B):-filter_shape(A,B1),same_color(B1,B2),exist(B2,B).

aux10(A,B):-filter_size(A,B1),filter_color(B1,B2),query_shape(B2,B).
aux11(A,B):-filter_color(A,B1),same_size(B1,B2),count(B2,B).
aux12(A,B):-filter_color(A,B1),same_material(B1,B2),count(B2,B).
aux13(A,B):-filter_color(A,B1),same_material(B1,B2),count(B2,B).
aux14(A,B):-filter_size(A,B1),filter_color(B1,B2),filter_material(B2,B3),count(B3,B).
aux15(A,B):-filter_size(A,B1),filter_color(B1,B2),filter_material(B2,B3),count(B3,B).
aux16(A,B):-filter_size(A,B1),filter_material(B1,B2),query_color(B2,B).
aux17(A,B):-filter_material(A,B1),same_shape(B1,B2),count(B2,B).
aux18(A,B):-filter_color(A,B1),filter_shape(B1,B2),query_material(B2,B).
aux19(A,B):-filter_color(A,B1),filter_material(B1,B2),query_size(B2,B).
aux20(A,B):-filter_color(A,B1),filter_shape(B1,B2),query_size(B2,B).
aux21(A,B):-filter_material(A,B1),filter_shape(B1,B2),query_color(B2,B).
aux22(A,B):-filter_color(A,B1),query_size(B1,B).
aux23(A,B):-filter_color(A,B1),filter_material(B1,B2),count(B2,B).
aux24(A,B):-filter_material(A,B1),query_shape(B1,B).
aux25(A,B):-filter_shape(A,B1),query_color(B1,B).
aux26(A,B):-filter_shape(A,B1),count(B1,B).
