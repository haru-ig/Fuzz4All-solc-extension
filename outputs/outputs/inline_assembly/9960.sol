pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() public {
        value = value + 1;
    }
    function test(uint8 x) public returns (uint32 y) {
        return x << uint32(x>>1);
    }
}
