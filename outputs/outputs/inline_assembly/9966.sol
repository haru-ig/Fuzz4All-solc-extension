pragma solidity ^0.8.0;
contract C {
    uint32 public value;
    constructor() public {
        value = uint32(0xACEDB0FD) >> 1;
    }
    function test(uint8 x) public {
        uint32 y = uint32(x >> 1);
            value = x << 5;
    }
}
