pragma solidity ^0.8.0;
contract EquivalentQ5 {
    uint x;
    constructor() {
        x = 1;
    }
    uint constant mantissa = 4;
    function add() public {
        x += (uint(1e7) / 2)**mantissa;
    }
}
