pragma solidity ^0.8.0;
contract NoMutatedSematic {
    uint public x;
    function f() public {
        if (x <= 32) {
            x <<= 1;
        }
        else {
            x ^= 8;
        }
    }
}
