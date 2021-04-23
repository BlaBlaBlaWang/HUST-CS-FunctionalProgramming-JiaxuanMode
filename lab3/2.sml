(* mapList : (('a->'b) * 'a list) -> 'b list *)
(* REQUIRES: *)
(* input parameter1 is a function with polymorphic type mapping from 'a to 'b *)
(* input parameter2 is a polymorphic list 'a list *)
(* ENSURES: *)
(* the function calculates every result performed with elements in 'a list by parameter1*)
(* and combines them as a list*)
fun mapList(tmpfunc:('a -> 'b), []:'a list):'b list=[]
|mapList(tmpfunc, x::tmplist)=tmpfunc(x)::mapList(tmpfunc,tmplist);

fun squarecal(x:int)=x*x;
fun doublecal(x:int)=x+x;
fun factorial(0)=1
|factorial(1)=1
|factorial(x:int)=x*factorial(x-1);

val a=[~1,1,2,3,4,5];
val b=[1,2,3,4,5];

mapList(squarecal,a);
mapList(doublecal,a);
mapList(factorial,b);