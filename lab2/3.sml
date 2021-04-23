(* listToTree : int list -> tree 	*)
(* REQUIRES: input parameter is an int list *)
(* ENSURES: *)
(* listToTree transfers input int list to a balanced binary tree*)
(* the return binary tree comforts the datatype defination of tree*)

datatype tree = Empty|Node of tree * int *tree;

fun split (L:int list)=
    let
        val left:int list=List.take(L,length(L) div 2)
        val right=List.drop(L,length(L) div 2)
    in 
        if(length(right)=0)
            then 
                (left,0,right)
        else
            (left,hd(right),List.drop(right,1))
    end;

fun listToTree ([]:int list):tree=Empty
|listToTree ((x:int)::[]):tree=Node(Empty,x,Empty)
|listToTree ((x:int)::L):tree=
    let 
        val (L1:int list,y,L2:int list)=split(x::L)
    in 
        Node(listToTree(L1),y,listToTree(L2))
    end;

val L1=[1,2,3,4,5];
val L2=[1,2,3,4,5,6];
val L3=[1];
split(L1);
split(L2);
listToTree(L1);
listToTree(L2);
