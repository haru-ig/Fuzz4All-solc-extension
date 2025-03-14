pragma solidity ^0.8.0;
contract Comp1
{
    uint _a;
    constructor(uint _a) {
        _a=_a;
    }
    function setIncrease(uint _increase) public {
        _a++;
    }
}
