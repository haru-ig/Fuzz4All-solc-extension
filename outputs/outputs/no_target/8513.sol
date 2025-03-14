pragma solidity ^0.8.0;
contract NonEquivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint[5] memory _value, uint _value2, uint[16] memory _value3) public {
        a = 65;
        b = _value + _value2;
        c = _value2 + _value3;
    }
    function set(uint, uint, uint d, uint c, uint e) public {
        c = c + d;
        c = e + f;
    }
    }
}
