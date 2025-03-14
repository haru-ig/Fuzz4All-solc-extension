pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint[5] memory _value1, uint _value2, uint[16] memory _value3) public {
        a = 64;
        b = _value1;
        c = _value2;
    }
    function set(uint, uint b, uint d, uint c, uint e) public {
        b = b + d;
        c = c + e;
    }
    }
