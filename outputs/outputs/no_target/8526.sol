pragma solidity ^0.8.0;
contract Equivalent3 {
    uint public a;
    uint b;
    uint16 public c;
    constructor(uint d, uint, uint16) public {
        a = 12;
        b = 42;
        c = 253;
    }
    function set(uint) public {
        c = c + 105;
        b = b - 129;
        c = b % a;
        b = a + 252;
    }
    }
