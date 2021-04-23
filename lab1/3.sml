fun mult [ ] = 	1	(* FILL IN *)
| mult (x ::L) = x*mult(L);	(* FILL IN *) 

(* mult : int list list -> int 	*)
(* REQUIRES: true		*)
(* ENSURES: mult(R) evaluates to the product of all the integers in the lists of R. *)

fun Mult [ ] = 	1 (* FILL IN *)
    | Mult ((r:int list) :: R) = mult(r)*Mult(R);	(* FILL IN *)

Mult([[1,2,3],[4,5]]);
