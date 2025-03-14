pragma solidity ^0.8.0;
library UintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return 0x07 - X;
    }
}
