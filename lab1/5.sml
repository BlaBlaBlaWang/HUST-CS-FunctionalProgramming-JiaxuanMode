(* double : int -> int *)
(* REQUIRES: n >= 0 *)
(* ENSURES: double n evaluates to 2 * n.*)

fun double (0 : int) : int = 0
    | double n = 2 + double (n - 1)

fun square (n:int)=
    let
      val times=n div 2;
      val moding=n mod 2;
      fun sum 0:int=0
        |sum m:int=double(n)+sum(m-1);
    in
      if moding=1
        then n+sum(times)
      else
        sum(times)
    end;

square(4);
square(9);