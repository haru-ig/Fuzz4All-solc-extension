pragma solidity ^0.8.0;
contract Computation
{
    uint8 public a;
    uint8 public b;
    constructor() {
        a = 0x11;
        b = 2;
    }
    function multiply() public {
        a = a * b;
        b = b * a;
    }
    function setA(uint x) public {
        a = x;
    }
    function getA() view public returns (uint) {
        return a;
    }
}
