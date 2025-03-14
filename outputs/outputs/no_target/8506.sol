pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint _value1, uint[16] memory _value2, uint _value3) public {
        a = 128;
        b = _value2 + [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 20, 8];
        c = _value3 + [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 20, 8];
    }
    function set(uint b, uint d, uint _value, uint e) public {
        b = b + d + _value ;
        c = c + e;
    }
    }
