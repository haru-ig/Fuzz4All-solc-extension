pragma solidity ^0.8.0;
contract Computation
{
    uint public A = 5;
    uint public B = 2;

    constructor() {
    }
    function multiply() public {
        A += B;
    }
    function setA(uint x) public {
        A = x;
    }
    function getA() view public returns (uint) {
        return A;
    }
    function setB(uint x) public {
        B = x;
    }
    function getB() view public returns (uint) {
        return B;
    }
}

contract Comp
{
    uint public A = 5;
    uint public B = 2;

    constructor() {
    }
    function multiply() public {
        A += B;
    }
    function setA(uint x) public {
        A = x;
    }
    function getA() view public returns (uint) {
        return A;
    }
    function setB(uint x) public {
        B = x;
    }
    function getB() view public returns (uint) {
        return B;
    }
}
