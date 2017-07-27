%Facts
    %Grasp
    move(state(middle,onbox,middle,hasnot),
        grasp,
        state(middle,onbox,middle,has)).
    %Climb
    move(state(P,onfloor,P,H),
        climb,
        state(P,onbox,P,H)).
    %Push
    move(state(P1,onfloor,P1,H),
        push(P1,P2),
        state(P2,onfloor,P2,H)).
    %Walk
    move(state(P1,onfloor,B,H),
        walk(P1,P2),
        state(P2,onfloor,B,H)).    

%Rules
    %Monkey has banana
    canget(state(_,_,_,has)).
    %Move to get the banana
    canget(State1) :- move(State1,Move,State2), canget(State2).

