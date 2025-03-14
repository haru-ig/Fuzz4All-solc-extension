pragma solidity ^0.8.0;
contract Mutated1 {
    uint public a;
    uint[] private b;
    uint public c;
    uint private d;
    constructor (
        uint _value1,
        uint[] memory _value2,
        uint _value3,
        uint _value4,
        uint _value5
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
        d = _value4;
    }
    function set (
        uint a,
        uint[] memory b,
        uint c,
        uint d
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
        d = d + 16;
    }
    }
contract G_ {
    uint64 private a;
    uint64[] private b;
    uint c;
    uint private d;
    constructor (
        uint64 _value1,
        uint64[] memory _value2,
        uint _value3,
        uint _value4,
        uint _value5
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
        d = _value4;
    }
    function set (
        uint64 a,
        uint64[] memory b,
        uint c,
        uint d
    ) public {
        a = a + 16;
        b = b;
        c = c + 16;
        d = d + 16;
    }
    }
