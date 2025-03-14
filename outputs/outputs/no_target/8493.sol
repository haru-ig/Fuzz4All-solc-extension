pragma solidity ^0.8.0;
contract Old0 {
    uint public a;
    uint[4] public b;
    uint public c;
    constructor (
        uint _value1,
        uint[4] memory _value2,
        uint _value3,
        uint _value4
    ) public {
        a = _value1 + 8;
        b = _value2;
        c = _value4;
    }
    function set (
        uint a,
        uint[4] memory b,
        uint c
    ) public {
        a = a + 8;
        b = b;
        c = c + 8;
    }
    }
