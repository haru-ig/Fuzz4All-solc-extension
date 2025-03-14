pragma solidity ^0.8.0;
contract Mutated17 {
    uint64 public a;
    constructor (
        uint64 _value1
    ) public {
         a = _value1 + 16;
    }
    function set (
        uint64 a
    ) public {a = a + 16 ;}
    }
