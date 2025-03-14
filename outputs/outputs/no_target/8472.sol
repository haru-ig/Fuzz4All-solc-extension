pragma solidity ^0.8.0;
contract Mutated18 {
    uint161 public a;
    constructor (
        uint161 _value1
    ) public {
         a = _value1 + 16;
    }
    modifier my_modifier() {
        a = a + 16 ;
        _;
    }
    }
