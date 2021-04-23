(* subsetSumOption : int list * int -> int list option *)
(* REQUIRES: *)
(* input parameter1 is an int list *)
(* input parameter2 is an int *)
(* ENSURES: *)
(* output is of the list option type *)
(* if the input list has such a subset that its sum is equal to parameter2, then return it*)
(* else return NONE of the type int option *)
fun subsetSumOption([],s):int list option=
    if s=0
        then SOME []
    else NONE
|subsetSumOption(L,s)=
    if s=0
        then SOME []
    else    
        if subsetSumOption(tl(L),s-hd(L))=NONE
            then subsetSumOption(tl(L),s)
        else SOME (hd(L)::valOf(subsetSumOption(tl(L),s-hd(L))));
val a=[~1,~2,~3,1,2,3,4,5,6];
subsetSumOption(a,22);

val subsetSumOption_testcase = [1,2,5,6,7,8];
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase, 9);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase, 4);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase, 10);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase, 15);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase, ~1);
val subsetSumOption_testcase2 = [~1, ~2, ~4];
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase2, ~3);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase2, ~7);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase2, ~6);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase2, ~8);
val test_subsetSumOption = subsetSumOption(subsetSumOption_testcase2, 0);
(*    
fun optiontoList([])=[]
|optiontoList(x::L)=valOf(x)::optiontoList(L);


fun subsetSumOption(L,s):int list option=
    let 
        val optionList=subsetSumOption1(L,s)
    in
        if(optionList=NONE::[])
            then NONE
        else 
            SOME (optiontoList(optionList))
    end;        
*)