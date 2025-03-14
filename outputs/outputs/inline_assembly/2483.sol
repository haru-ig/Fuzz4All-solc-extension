pragma solidity ^0.8.0;
contract Comp1
{
    uint _a;
    uint _c=_a;
    constructor(uint _a) {
        _a=_a;
    }
    function setIncrease(uint _increase) public {

        _c+=_increase;
        _c %=_increase;
    }
}
