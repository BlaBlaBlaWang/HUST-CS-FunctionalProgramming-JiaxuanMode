(* thenAddOne : ((int->int) * int) -> int *)
(* REQUIRES: *)
(* input parameter1 is a function with type mapping from int to int *)
(* input parameter2 is an int parameter *)
(* ENSURES: *)
(* the function returns the result that is bigger than the result performed by parameter1 on parameter2 by 1*)
fun thenAddOne(tmpfunc:(int -> int) , x:int )=tmpfunc(x)+1;

fun squarecal(x:int)=x*x;
fun doublecal(x:int)=x+x;
fun factorial(0)=1
|factorial(1)=1
|factorial(x:int)=x*factorial(x-1);

thenAddOne(doublecal,5);
thenAddOne(squarecal,5);
thenAddOne(factorial,5);