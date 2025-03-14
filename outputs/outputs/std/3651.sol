pragma solidity ^0.8.0;
contract NoParameters {
    uint[3] private array;
    function add(uint a, uint b) public returns (uint) {
        uint i = a + b;
        return i;
    }
    constructor() public {
        uint a;
        uint b;
        a = 100;
    }
 }
