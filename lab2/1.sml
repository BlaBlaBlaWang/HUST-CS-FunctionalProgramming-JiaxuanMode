(* reverse : int list -> int list 	*)
(* REQUIRES: input list is an arbitrary int list	*)
(* ENSURES: *)
(* reserse(x) reverse the position of every element in list x *)
fun reverse []=[]
|reverse ((x:int)::L)=(reverse(L)@(x::[]));

fun reverse' L:int list=rev(L);

val L=[1,2,3,4,5,6,7,8,9];
reverse(L);
reverse'(L);