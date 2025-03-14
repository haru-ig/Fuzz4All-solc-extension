pragma solidity ^0.8.0;
contract MutatedBlock2Mutation76 {
    struct C {
        uint _a;
    }
    function test4(C storage c) returns (C storage) {
        c._a = 1;
        c._a = 2;
        return c;
    }
    function test5(uint a, uint b, uint c, uint d, uint e, uint f) returns (uint) {
        return a + b + c + d + e + f;
    }
}
