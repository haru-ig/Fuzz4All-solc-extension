pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    constructor() {
        a = 10;
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
    function setB(uint x) public {
        b = x;
    }
    function getB() view public returns (uint) {
        return b;
    }
}
