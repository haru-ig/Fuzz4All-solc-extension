pragma solidity ^0.8.0;

contract TestInterface1 {
    function add(uint8 a, uint8 b) public pure returns (uint8) {}
    function sub(uint8 a, uint8 b) public pure returns (uint8) {}
}

contract C {
    TestInterface1 test;
    constructor(uint foo) {
        test = TestInterface1(foo);
    }
}
library Lib {
    function add(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;
    }
}
contract C2 {
    uint8 public value = 0;
    constructor() public {
        require(Lib.add(value, 5)==10, "Value is incorrect");
    }
    function test(uint8 x) public {
        uint8 y = x >> 1;
        value = x << (uint32(x) >> 2);
    }
}
