(* binarySearch : tree *int -> bool *)
(* REQUIRES *)
(* input parameter 1 is a tree defined as follows *)
(* input parameter 2 is int *)
(* ENSURES: *)
(* if the parameter 1 is an ordered binary tree *)
(* search for parameter 2 in that tree *)
(* if found, return true; else, return false *)
datatype tree = Empty|Node of tree * int *tree;
(*notice: here do not define order again*)
(*if you defined and delete aftarwards within a single terminal's test*)
(*then the defination would still work and mistake exists*)
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

val L2=[1,2,3,4,5];
val L1=[1,2,3,4,5,6,7];

fun issorted(Empty:tree):bool=true
|issorted (Node( Empty, x, Empty)) =true
|issorted(Node( Empty , x , Node( left2:tree , z , right2:tree)))=
    let
        val bool1=
            case (Int.compare(z,x)) of 
                GREATER => true
                |_ => false
    in
        bool1 andalso issorted(Node( left2:tree , z , right2:tree))
    end
|issorted(Node( Node( left1:tree , y , right1:tree), x , Empty))=
    let
        val bool2=
            case (Int.compare(y,x)) of 
                GREATER => false
                |_ => true
    in
        bool2 andalso issorted(Node( left1 , y , right1))
    end
|issorted(Node(Node( left1 , y , right1), x , Node( left2 , z , right2))):bool=
    let
        val bool1=
            case (Int.compare(z,x)) of 
                GREATER => true
                |_ => false
        val bool2=
            case (Int.compare(y,x)) of 
                GREATER => false
                |_ => true
    in
        bool1 andalso bool2 andalso issorted(Node( left1 , y , right1)) andalso issorted(Node( left2 , z , right2))
    end;
    
fun binarySearch (Empty,x:int):bool =false
|binarySearch(T:tree,x:int):bool=
    if(issorted(T))
        then
            let
                val Node(left,y,right)=T
            in
                case (Int.compare(x,y)) of 
                    GREATER => binarySearch(right,x)
                    |EQUAL => true
                    |LESS => binarySearch(left,x)
            end
    else
        false;


listToTree(L1);
issorted(listToTree(L1));

binarySearch(listToTree(L1),1);
binarySearch(listToTree(L1),2);
binarySearch(listToTree(L1),3);
binarySearch(listToTree(L1),4);
binarySearch(listToTree(L1),5);
binarySearch(listToTree(L1),6);
binarySearch(listToTree(L1),7);
binarySearch(listToTree(L1),8);
binarySearch(listToTree(L1),0);