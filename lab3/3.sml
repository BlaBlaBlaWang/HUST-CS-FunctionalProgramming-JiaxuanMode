(* mapList : (('a->'b) -> ('a list ->'b list) *)
(* REQUIRES: *)
(* input parameter1 is a function with polymorphic type mapping from 'a to 'b *)
(* ENSURES: *)
(* output function with polymorphic type mapping from 'a list to 'b list *)
fun mapList'(tmpfunc:('a -> 'b)):('a list -> 'b list)=
    let 
        fun resfunc([]:'a list)=[]
        |resfunc(x::listbody)=tmpfunc(x)::resfunc(listbody)
    in
        resfunc
end;


fun squarecal(x:int)=x*x;
fun doublecal(x:int)=x+x;
fun factorial(0)=1
|factorial(1)=1
|factorial(x:int)=x*factorial(x-1);

val a=[~1,1,2,3,4,5];
val b=[1,2,3,4,5];
mapList'(squarecal)(a);
mapList'(doublecal)(a);
mapList'(factorial)(b);