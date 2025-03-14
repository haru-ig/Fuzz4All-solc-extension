pragma solidity ^0.8.0;
contract Computation
{
    uint state;
    uint public a;
    uint public b;
    constructor() {
        a = 10;
        b = 2;
    }
    function multiply() public {
        uint x = a * b;
        a = a + b;
        b *= x;
    }
    modifier set1(uint x) { state = x; }
    modifier set2(uint x) { state = (state * x + a) / b; }
}
