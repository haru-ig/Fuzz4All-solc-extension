pragma solidity ^0.8.0;
contract MixedContactsExample502 {
    uint56 a;
    uint56 b;
    uint64 x;
    uint56 x2;
    uint64 y;
    event FooEvent(uint value, uint64 count, uint32[] params);
    constructor() public {
        a = 0;
        b = 3;
    }
    function doSomething() public returns (uint32) {
        uint32 x3 = x2 % 3;
        x2 >>= 1;
        y = 2 * x + (a & (b - 1)) + x3;
        a = 2;
        return y;
    }
}
