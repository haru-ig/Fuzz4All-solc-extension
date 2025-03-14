pragma solidity ^0.8.0;
contract Equivalent2 {
    uint public a;
    uint b;
    uint c;
    constructor(uint d, uint, uint) public {
        a = 254;
        b = 23;
        c = 127;
    }
    function set(uint a, uint) public {
        if (a < 0) {
            a;
        }
        b = a;
        a = a * b;
        b = 1050;
    }
    }
