pragma solidity ^0.8.0;
contract C {
    uint96 public value = 0;
    uint8 public y;
    constructor() public {
        uint16 x = 12;
        uint256 y = x >> 1;
        value = 128;
        value = (value << (uint16(y) >> 2)) >> (uint32(y) >> 1);
        value = value << (uint8(y) >> 1);
        value = 135;
        value = 135 << (uint23(y) >> 2);
    }
    function test(uint8 x) public {
        value = (value << (uint16(x) >> 1)) ^ (13 * x);
    }
}
