pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    (uint8 v) = (0xCD);
    constructor() public {
        value += v;
    }
    function test(uint8 x) public {
        uint32 y = x >> 1;
        uint32 z = uint32(x * 2);
        value += v + (uint32(y) >> 2);
    }
}
