(* revT : tree -> tree 	*)
(* REQUIRES: input parameter is a tree defined as follows *)
(* ENSURES: *)
(* revT reverses a balanced binary tree*)
(* so that the return binary tree comforts trav(revT t)=reverse(trav t) *)
datatype tree = Empty|Node of tree * int *tree;

fun reverse []=[]
|reverse ((x:int)::L)=(reverse(L)@(x::[]));

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

fun revT (Empty):tree = Empty 
|revT (T:tree):tree=
    let
        val Node(left,x,right)=T
    in
        Node(revT(right),x,revT(left))
    end;

fun trav (Empty):int list=[]
|trav (T:tree):int list=
    let 
        val Node(left,x,right)=T
    in 
        trav(left)@(x::trav(right))
    end;

val L1=[1,2,3,4,5];
val L2=[1,2,3,4,5,6];

trav(listToTree(L1));
trav(revT(listToTree(L1)))=reverse(trav(listToTree(L1)));
trav(revT(listToTree(L2)))=reverse(trav(listToTree(L2)));