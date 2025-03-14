pragma solidity ^0.8.0;
contract Mutated0 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint64 a,
        uint64[8] memory b,
        uint256 c
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
    }
