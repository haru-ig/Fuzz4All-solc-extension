pragma solidity ^0.8.0;
contract Mutated1 {
    uint public a = 16;
    uint[] public b = [16,2];
    uint public c;
    constructor (
        uint _value1,
        uint[] memory _value2,
        uint _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3 + 16;
    }
    set a (
        uint c
    ) public {
        a = c + 16;
    }
    }
contract G {
    uint64 private a = 16;
    uint64[] private b = [16,2];
    uint c = 16;
    constructor (
        uint64 _value1,
        uint64[] memory _value2,
        uint _value3,
        uint _value4,
        uint64 _value5
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3 + 16;
        c = _value5;
    }
    set a (
        uint64 c
    ) public {
        a = c + 16;
    }
    }
pragma solidity >=0.5.0;
contract Mutated2 {
    uint public a;
    uint[] public b = [16,2];
    uint public c;
    constructor (
        uint _value1,
        uint[] memory _value2,
        uint _value3,
        uint _value4
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3 + 16;
        a = _value4 + 16;
    }
    function set (
        uint c,
        uint a,
        uint[] memory b
    ) public {
        c = c
