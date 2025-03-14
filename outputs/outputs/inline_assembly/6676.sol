pragma solidity ^0.8.0;

contract MixedContactsExample502 {
    uint64 x;
    uint64 y;
    uint8 a;
    uint8 x0;
    uint8 a0;
    event SoMEvent0(uint value);
    event SoMEvent1(uint value);
    constructor() public {
        a0 = 12;
        x0 = 0;
    }
    function doSomething0(uint8 a1) public returns (uint64) {
        uint8 a2 = 0;
        x0 = a2;
        a2 = 1;
        return x0 + a1 + a;
    }
    function doSomething1(uint8 a1) public returns (uint64) {
        uint8 a2 = 1;
        a2 = 0;
        return (x + a1 + a) + x + a1 + a;
    }
    function compute(uint8 a0) public returns (uint64) {
        x = 56;
        a = 1003;
        b = 10345;
        y = 0;
        a = 1001;
        a = 1003;
    }
}
