pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint a;
    uint b;
    uint c;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        b = 1;
        c = 2;
        if(a >= 3 || b == 1 || c == 1){
           b = b;
        }else if(a < 3 || b == 2){
            b = 3;
           c = c+1;
        }
    }
}
