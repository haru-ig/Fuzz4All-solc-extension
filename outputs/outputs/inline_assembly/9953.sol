pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    uint16 counter;
    constructor() {
        value = value + 1;
        counter = 6;
    }
    function test(uint8 x) public {
        uint8 y = x >> 1;
        value = x << (uint32(x) >> 2);
        uint16 newCounter = 2*counter + 1;
        counter = newCounter;
    }
}
