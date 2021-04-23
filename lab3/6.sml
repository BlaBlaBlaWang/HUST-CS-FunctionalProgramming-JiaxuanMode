(* exists : (‘a -> bool) -> ‘a list -> bool *)
(* REQUIRES: *)
(* input is a function that gets 'a type and return bool type *)
(* ENSURES: *)
(* true if there is an x in L such that p x=true *)
(* false otherwise. *)
fun exists(tmpfunc:('a->bool)):('a list->bool)=
    let
        fun funclist []=false
        |funclist (x::L)=
            if(tmpfunc(x))
                then true
            else funclist(L)
    in
        funclist
    end;

fun isOdd (x:int)=
    if x mod 2 =1
        then true
    else false

val testlist=[2,4,6,8,1,10];
exists isOdd testlist;

(* forall : (‘a -> bool) -> ‘a list -> bool *)
(* REQUIRES: *)
(* input is a function that gets 'a type and return bool type *)
(* ENSURES: *)
(* true if p x = true for every item x in L*)
(* false otherwise.*)
fun forall(tmpfunc:('a->bool)):('a list->bool)=
    let
        fun funclist []=true
        |funclist (x::L)=
            if(tmpfunc(x))
                then funclist(L)
            else false
    in
        funclist
    end;

val testlist1=[1,3,5,7,~1,~3];
forall isOdd testlist;
forall isOdd testlist1;
