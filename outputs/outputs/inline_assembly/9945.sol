pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() {
        value = 8;
    }
    function test(uint8 x) public {
        x >>= 1;
        value = x << (y & 1);
    }
}
