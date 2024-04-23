filter_color([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[ok,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [ok,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[CO1,CO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]):-
    scene(Objects_List,_Relations_List),
    findall(Index_1,(member(Index_1,O1),member(color(Index_1,C1),Objects_List)),CO1),
    findall(Index_2,(member(Index_2,O2),member(color(Index_2,C2),Objects_List)),CO2).


filter_shape([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,ok,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,ok,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[SO1,SO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]):-
    scene(Objects_List,_Relations_List),
    findall(Index_1,(member(Index_1,O1),member(shape(Index_1,S1),Objects_List)),SO1),
    findall(Index_2,(member(Index_2,O2),member(shape(Index_2,S2),Objects_List)),SO2).


filter_size([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,ok,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,ok,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[ZO1,ZO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]):-
    scene(Objects_List,_Relations_List),
    findall(Index_1,(member(Index_1,O1),member(size(Index_1,Z1),Objects_List)),ZO1),
    findall(Index_2,(member(Index_2,O2),member(size(Index_2,Z2),Objects_List)),ZO2).

filter_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,ok,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,ok,R2,RC2,RS2,RZ2,RM2],[U,I],[MO1,MO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]):-
    scene(Objects_List,_Relations_List),
    findall(Index_1,(member(Index_1,O1),member(material(Index_1,M1),Objects_List)),MO1),
    findall(Index_2,(member(Index_2,O2),member(material(Index_2,M2),Objects_List)),MO2).


relate_filter_color([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1],[C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,ok,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,ok,RS2,RZ2,RM2],[U,I],[RCO1,RCO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,Relations_List),
    length(Objects_List, Int),
    findall(Index,between(0, Int, Index),Objects),
    (nonvar(R1) -> findall(Index_1,(member(Index_1,O1),member(R_Index_1,Objects),Relation1=..[R1,Index_1,R_Index_1], member(color(R_Index_1,RC1),Objects_List),member(Relation1,Relations_List)),RCO_1),remove_duplicates(RCO_1,RCO1);RCO1=O1),
    (nonvar(R2) -> findall(Index_2,(member(Index_2,O2),member(R_Index_2,Objects),Relation2=..[R2,Index_2,R_Index_2], member(color(R_Index_2,RC2),Objects_List),member(Relation2,Relations_List)),RCO_2),remove_duplicates(RCO_2,RCO2);RCO2=O2).
    
relate_filter_shape([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1],[C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,ok,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,ok,RZ2,RM2],[U,I],[RSO1,RSO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,Relations_List),
    length(Objects_List, Int),
    findall(Index,between(0, Int, Index),Objects),
    (nonvar(R1) -> findall(Index_1,(member(Index_1,O1),member(R_Index_1,Objects),Relation1=..[R1,Index_1,R_Index_1], member(shape(R_Index_1,RS1),Objects_List),member(Relation1,Relations_List)),RSO_1),remove_duplicates(RSO_1,RSO1);RSO1=O1),
    (nonvar(R2) -> findall(Index_2,(member(Index_2,O2),member(R_Index_2,Objects),Relation2=..[R2,Index_2,R_Index_2], member(shape(R_Index_2,RS2),Objects_List),member(Relation2,Relations_List)),RSO_2),remove_duplicates(RSO_2,RSO2);RSO2=O2).
    
relate_filter_size([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1],[C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,ok,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,ok,RM2],[U,I],[RZO1,RZO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,Relations_List),
    length(Objects_List, Int),
    findall(Index,between(0, Int, Index),Objects),
    (nonvar(R1) -> findall(Index_1,(member(Index_1,O1),member(R_Index_1,Objects),Relation1=..[R1,Index_1,R_Index_1], member(size(R_Index_1,RZ1),Objects_List),member(Relation1,Relations_List)),RZO_1),remove_duplicates(RZO_1,RZO1);RZO1=O1),
    (nonvar(R2) -> findall(Index_2,(member(Index_2,O2),member(R_Index_2,Objects),Relation2=..[R2,Index_2,R_Index_2], member(size(R_Index_2,RZ2),Objects_List),member(Relation2,Relations_List)),RZO_2),remove_duplicates(RZO_2,RZO2);RZO2=O2).

relate_filter_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1],[C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,ok], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,ok],[U,I],[RMO1,RMO2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,Relations_List),
    length(Objects_List, Int),
    findall(Index,between(0, Int, Index),Objects),
    (nonvar(R1) -> findall(Index_1,(member(Index_1,O1),member(R_Index_1,Objects),Relation1=..[R1,Index_1,R_Index_1], member(material(R_Index_1,RZ1),Objects_List),member(Relation1,Relations_List)),RMO_1),remove_duplicates(RMO_1,RMO1);RMO1=O1),
    (nonvar(R2) -> findall(Index_2,(member(Index_2,O2),member(R_Index_2,Objects),Relation2=..[R2,Index_2,R_Index_2], member(material(R_Index_2,RZ2),Objects_List),member(Relation2,Relations_List)),RMO_2),remove_duplicates(RMO_2,RMO2);RMO2=O2).



query_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[Q_CO1,Q_CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,_Relations_List),
    findall(Color_1,(member(Index_1,O1),member(color(Index_1,Color_1),Objects_List)),Q_CO1),
    findall(Color_2,(member(Index_2,O2),member(color(Index_2,Color_2),Objects_List)),Q_CO2).
query_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[Q_SO1,Q_SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,_Relations_List),
    findall(Shape_1,(member(Index_1,O1),member(shape(Index_1,Shape_1),Objects_List)),Q_SO1),
    findall(Shape_2,(member(Index_2,O2),member(shape(Index_2,Shape_2),Objects_List)),Q_SO2).
query_size([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[Q_ZO1,Q_ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,_Relations_List),
    findall(Size_1,(member(Index_1,O1),member(size(Index_1,Size_1),Objects_List)),Q_ZO1),
    findall(Size_2,(member(Index_2,O2),member(size(Index_2,Size_2),Objects_List)),Q_ZO2).
query_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[Q_MO1,Q_MO2]]) :- 
    scene(Objects_List,_Relations_List),
    findall(Material_1,(member(Index_1,O1),member(material(Index_1,Material_1),Objects_List)),Q_MO1),
    findall(Material_2,(member(Index_2,O2),member(material(Index_2,Material_2),Objects_List)),Q_MO2).


equal_color([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans):- 
    (CO1 = CO2 -> Ans = yes; Ans = no).
equal_shape([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans):- 
    (SO1 = SO2 -> Ans = yes; Ans = no).
equal_size([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans):- 
    (ZO1 = ZO2 -> Ans = yes; Ans = no).
equal_material([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans):- 
    (MO1 = MO2 -> Ans = yes; Ans = no).


same_color([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[SCO_1,SCO_2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    scene(Objects_List,Relations_List),
    length(Objects_List, Int),
    findall(Index,between(0, Int, Index),Objects),
    findall(S_Index_1,(member(Index_1,O1),member(S_Index_1,Objects),member(color(Index_1,Color_1),Relations_List),member(color(S_Index_1,S_Color_1),Relations_List),Color_1=S_Color_1),SCO_1),
    findall(S_Index_2,(member(Index_2,O2),member(S_Index_2,Objects),member(color(Index_2,Color_2),Relations_List),member(color(S_Index_2,S_Color_2),Relations_List),Color_2=S_Color_2),SCO_2).


remove_duplicates([X],[X]). 
remove_duplicates([H | T], List) :- 
    member(H, T),
    remove_duplicates( T, List).


union([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[UNION,UNION],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    append(O1, O2, UNION_),
    remove_duplicates(UNION_,UNION).
intersect([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[INTERSECT,INTERSECT],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    intersection(O1,O2,INTERSECT_),
    remove_duplicates(INTERSECT_,INTERSECT).
    

count([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[N1,N2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],[scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[CN1,CN2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]]) :- 
    length(O1,CN1),
    length(O2,CN2).

greater_than([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[CN1,CN2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans) :-
    (CN1 > CN2 -> Ans = yes; Ans = no).
less_than([scene(_,_),[C1,S1,Z1,M1,R1,RC1,RS1,RZ1,RM1], [C2,S2,Z2,M2,R2,RC2,RS2,RZ2,RM2],[U,I],[O1,O2],[CN1,CN2],[CO1,CO2],[SO1,SO2],[ZO1,ZO2],[MO1,MO2]],Ans) :-
    (CN1 < CN2 -> Ans = yes; Ans = no).
