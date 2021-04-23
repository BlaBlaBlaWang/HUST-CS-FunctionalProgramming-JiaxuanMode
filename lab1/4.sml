(* mult’ : int list * int -> int 			*)
(* REQUIRES: true				*)
(* ENSURES: mult’(L, a) … (* FILL IN *)	*)
(*该函数用于将int与int list中每个元素相乘得到结果*)

fun mult' ([ ], a) = a
	| mult' (x :: L, a) = mult' (L, x * a);


fun Mult' ( [ ], a) = a	(* FILL IN *)
    | Mult' ((r:int list)::R, a) = mult'(r,a)* Mult'(R,1);	(* FILL IN *)

Mult'([[1,2],[3,4]],5);