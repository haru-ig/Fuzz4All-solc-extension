pragma solidity ^0.8.0;
contract MutatedQ6 {
    uint x;
    constructor() {
        x = 1;
    }
    function add1(uint z) public{
        y = x = z + 1;
    }
}
