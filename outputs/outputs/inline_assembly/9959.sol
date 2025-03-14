pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() public {
        value = uint8(value + 2);
    }
    function test(uint8 y) public {
        value = uint8(y >> 2);
        x = x << (uint8(y) >> 1);
    }
}
