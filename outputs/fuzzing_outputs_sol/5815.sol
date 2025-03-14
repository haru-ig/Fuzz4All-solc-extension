pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint a;
    uint b;
    uint[2] d;
    function test() public {
        a = 3;
        b = 2;
        d = [3,2];
        d[1] = 1;
        d[1] = 1;
        if(d[0] >= 3 || d[1] == 1) b = b;
        if(d[0] == 3) c = c+1;
    }
}
