pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        uint64 a1 = _value1 + 16;
        a = a1;
        uint64[8] memory b1 = _value2;
        b = b1;
        uint256 c1 = _value3 + 16;
        c = c1;
    }
    function set (
        uint64 a,
        uint64[8] memory b,
        uint256 c
    ) public {
        uint64 a1 = a + 16;
        a = a1;
        uint64[8] memory b1 = b;
        b = b1;
        uint256 c1 = c + 16;
        c = c1;
    }
    }


contract Mutation2 {
