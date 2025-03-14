pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint1 a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 8;
        b = 9;
        c = 2;
        d = address(0);
        for(uint i = 0; i<100; i++){
            c = 3;
            b = 5;
        }
        if (a < 9 || b!= 5){
            a = 5;
            d = address(0);
           c = c + 1;
            b = b;
        }
        if(a >= 9 || b < 5 || c > 3){
           a = a;
           b = 5;
           d = address(0);
        }
        if(a < 2 || c >= 3){
           a = a+3;
           c = 2;
        }
    }
}
