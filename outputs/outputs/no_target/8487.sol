pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint[] public b;
    constructor (
        uint64 _value1,
        uint[] memory _value2,
        uint _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        }
    function set(uint64 a, uint[] memory b, uint _value4) public {
        a = a + 16;
        b = b;
        c = 0;
    }
    }
