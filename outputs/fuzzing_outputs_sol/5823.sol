pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint a;
    uint b;
    uint c;
    function test() public {
        if (a > b || c == b || a > 2) {
            b = b;
        };
        if (c > 1) {
            c = c;
            b = b + 1;
        };
        if ((a < 3) && (a < 1)) {
            a = 3;
            b = b + 1;
            c = c;
        }
    }
}
