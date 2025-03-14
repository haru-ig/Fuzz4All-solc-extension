pragma solidity ^0.8.0;
contract Computation
{
    uint public constant A = 20;
    uint public constant B;
    constructor() {
    }
    function multiply() public {
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

pragma solidity 0.8.0;
