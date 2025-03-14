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
        a = b * a;
        b = a * b;
    }
}
