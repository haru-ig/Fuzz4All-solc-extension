pragma solidity ^0.8.0;
contract Mutated {
    uint public a;
    uint[10] public b;
    uint32 public c;
    constructor (
        uint _value1,
        uint[10] memory _value2,
        uint32 _value3
    ) public {
        a = _value1 + 42;
        b = _value2;
        c = _value3;
    }
    function set (
        uint a,
        uint[10] memory b,
        uint32 c
    ) public {
        a = _value1 + 42;
        b = b;
        c = _value3;
    }
    }
contract G {
    uint64 private a;
    uint64[] private b;
    uint c;
    constructor (
        uint64 _value1,
        uint64[] memory _value2,
        uint32 _value3,
        uint _value4
    ) public {
        a = _value1 + 42;
        b = _value2;
        c = _value3;
    }
    function set (
        uint64 a,
        uint64[] memory b,
        uint32 c
    ) public {
        a = _value1 + 42;
        b = b;
        c = _value3;
    }
    }
