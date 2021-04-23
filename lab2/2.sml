(* interleave : int list * int list -> int list 	*)
(* REQUIRES: int list *int list is a pair of two int lists *)
(* ENSURES: *)
(* interleave(x,y) combines two int lists so that their elements occur alternatively *)
(* if one int list ends, then the remaining elements of the other *)
(* are attached to the end of the result*)
fun interleave ([],[])=[]
|interleave (x:int list,[])=x
|interleave ([],y:int list)=y
|interleave ((x:int)::L,(y:int)::M)=x::(y::interleave(L,M));

interleave([2],[4]) = [2,4];
interleave([2,3],[4,5]) = [2,4,3,5];
interleave([2,3],[4,5,6,7,8,9]) = [2,4,3,5,6,7,8,9];
interleave([2,3],[ ]) = [2,3];

val a=[1,2,3,4,5];
val b=[6,3,4,5];
val res=interleave(a,b);
