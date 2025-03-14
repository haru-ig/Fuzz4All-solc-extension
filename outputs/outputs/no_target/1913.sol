pragma solidity ^0.8.0;
library UintWrapper2 {
    uint constant X = 1;
    uint constant Y = 0x6d;
    modifier m(uint a) {
        return 0x07 - a + X - 0x41;
    }
    function x() pure public returns (uint) {
        return (0x07 - X) + Y;
    }
}
