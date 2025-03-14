pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() public {
        value = 1;
    }
    function test(uint8 x) public {
        uint32 y = x >> 1;
        value = (1) << ((x ^ uint8(y)) >> 2);
    }
}
