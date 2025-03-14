pragma solidity ^0.8.0;
contract Mutated18 {
    uint64 public a;
    constructor (
        uint64 _value1
    ) public {
         a = _value1 + 16;
    }
    function mutated2 (
        uint64 a
    ) public {a = a * 2; }
    function mutated3 (
        uint64 a,
        uint64 b
    ) public {
        a = a + b + 16;
    }
    function mutated4 (
        uint64 a,
        uint64 b,
        uint64 c
    ) public {
        a = a * 2 + b * 4 + c * 8;
    }
    function mutated5 (
        uint64 a,
        uint64 b,
        uint64 c,
        uint64 d
    ) public {
        a = a + b + c + d + a * 2 + b * 2 + c * 2 + d * 2;
    }
    function mutated6 (
        uint64 a,
        uint64 b,
        uint64 c,
        uint64 d,
        uint64 e
    ) public {
        a = a + b + c + d + e + b * 2 + c * 4 + d * 8 + e * 16;
    }
    }
