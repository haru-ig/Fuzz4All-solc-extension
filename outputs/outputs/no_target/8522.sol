pragma solidity ^0.8.0;
contract Equivalent3 {
    uint public a;
    uint[5] public b;
    uint public c;
    constructor(uint[8] memory _value1, uint _value2, uint[16] memory _value3) public {
        a = 128;
        b = _value1;
        c = _value2;
    }
    }
