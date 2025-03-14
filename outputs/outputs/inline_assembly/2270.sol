pragma solidity ^0.8.0;
contract MutateMath
{
    uint a;
    constructor(uint initialValue) {
        a = initialValue;
    }
    function update() public {
        uint x = a;
        a = a + 1;
        a = x;
    }
}
