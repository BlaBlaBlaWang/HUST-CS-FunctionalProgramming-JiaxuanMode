fun zip ((s:string)::[],(x:int)::[])=(s,x)::[]
|zip ((s:string)::L,(x:int)::K)=(s,x)::zip(L,K)
|zip ((s:string)::L,[])=[]
|zip ([],(x:int)::K)=[]
|zip ([],[])=[];

zip (["hello","hi"],[1,2]);
zip (["hello"],[1,2]);
zip (["hello","hi"],[1]);
zip ([],[]);

fun unzip ((s:string,x:int)::[])=(s::[],x::[])
|unzip ((s:string,x:int)::L)=
    let
      val (L1,L2)=unzip(L);
    in
      (s::L1,x::L2)
    end;

unzip[("hello",1),("hi",2)];