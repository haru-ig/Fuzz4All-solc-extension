pragma solidity ^0.8.0;
contract Mutated1 {
    uint public a;
    uint[8] public b;
    uint public c;
    constructor (
        uint _value1,
        uint[8] memory _value2,
        uint _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint128 a,
        uint[8] memory b,
        uint64 c
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
}
contract G1 {
    uint64 private a;
    uint64[] private b;
    uint64 c;
    constructor (
        uint64 _value1,
        uint64[] memory _value2,
        uint64 _value3,
        uint _value4
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    function set (
        uint64128 a,
        uint64[] memory b,
        uint64 c
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
    }
    }
