pragma solidity ^0.8.0;
contract MutatedSematic {
    uint public x;
    function f() public {
        if (x > 32) {
            x <<= 1;
        }
        else {
            x &= 7;
        }
    }
}
