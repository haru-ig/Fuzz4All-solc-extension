pragma solidity ^0.8.0;
contract Computation
{
    uint public constant a = 10;
    uint public constant b = 2;
    uint constant a_pre = a;
    uint constant b_pre = b;
    uint constant a_eq = a * b;
    uint constant b_eq = b * a;
    function multiply() public {
        a = a * b;
        b = b * a;
    }
    function setA(uint x) public {
        a = x;
    }
    function getA() view public returns (uint) {
        return a_pre;
    }
    function setB(uint x) public {
        b = x;
    }
    function getB() view public returns (uint) {
        return b_pre;
    }
}
