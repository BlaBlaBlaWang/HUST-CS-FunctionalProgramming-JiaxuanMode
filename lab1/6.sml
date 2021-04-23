fun divisibleByThree 0=true
    |divisibleByThree 1=false
    |divisibleByThree 2=false
    |divisibleByThree (n:int)=divisibleByThree(n-3);

divisibleByThree(81);
divisibleByThree(82);
divisibleByThree(83);