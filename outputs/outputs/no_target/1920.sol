pragma solidity ^0.8.0;
library UintWrapper {
    uint constant X = 1;
    function x() returns (uint) {
        return 0x08 - X;
    }
    function y(uint v) pure public returns (uint) {
        return v + 0x20 + X;
    }
}
