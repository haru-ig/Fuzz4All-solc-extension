pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() {
        value = value + 1;
    }
    function test(uint8 x) public {
        uint8 y = x >> 1;
        value = x << (uint32(x) >> 2);
    }
}
