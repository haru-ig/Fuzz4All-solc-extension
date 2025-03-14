pragma solidity ^0.8.0;
contract MovedSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    function test(){
        if(a == 2 && b > 2){
            if(c > 2) d = address(0);
            b = 2;
            a = a+1;
        }
        if(d!= address(0)){d = d;}
    }
}
