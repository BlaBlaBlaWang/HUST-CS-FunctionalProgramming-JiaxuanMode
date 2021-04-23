(* mult : int list -> int 		*)
(* REQUIRES: true		*)
(* ENSURES: mult(L) evaluates to the product of the integers in L. *)
fun mult [ ] = 	1	(* FILL IN *)
| mult (x ::L) = x*mult(L);	(* FILL IN *) 

mult ([1,2,3,4,5]);