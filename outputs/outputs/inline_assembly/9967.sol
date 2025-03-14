pragma solidity ^0.8.0;
contract C {
    uint32 public value;
    C internal c;
    C public a;
    constructor() public {
        value = uint32(0xACEDB0FD) >> 1;
    }
    function test1(uint8 x) public {
        uint32 y = uint32(x >> 1);
        uint32 z = uint32(c.value);
            value = x << y;
        a = c;
    }
    function test2(uint8 x) public {
        uint32 y = uint32(x >> 1);
        uint32 z = uint32(c.value);
        a = c;
            value = x << y;
    }
}
