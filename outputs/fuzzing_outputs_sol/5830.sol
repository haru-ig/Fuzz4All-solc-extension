pragma solidity ^0.8.0;
contract MutatedSemanticsFallback {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        for(uint i = 0; i<100; i++){
            c = 2;
            b = 1;
        }
        if(a >= 3 || b <= 2){

            b = 3;
            a = a+1;
        }
        if(c!= 2 || b!= 3 || a!= 4 || d!= address(0)){
            d = d;
        }
    }
}
