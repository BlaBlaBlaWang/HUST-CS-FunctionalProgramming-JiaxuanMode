(* findOdd : int list -> int option *)
(* REQUIRES: *)
(* input parameter is an int list *)
(* ENSURES: *)
(* output int function type *)
(* if the input list has any odds, then return the first odd in type int option*)
(* else return NONE of int option *)
(* the target of option is to wrap NONE along with polymorphic types*)
(*datatype 'a option = NONE | SOME of 'a;*)

fun findOdd([]:int list)=NONE
    |findOdd(x::L)=
        if x mod 2 = 1
            then SOME x
        else findOdd(L);

val a=[4,5,6];
val b=[];
val c=[1];

findOdd(a);
findOdd(b);
findOdd(c);