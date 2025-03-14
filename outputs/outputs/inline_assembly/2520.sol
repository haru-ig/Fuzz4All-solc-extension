pragma solidity ^0.8.0;
contract Comp31{
    uint32 a;
    constructor(uint32 _a) {
        a = _a;
    }
    function divideByOneAndFive(uint32 _a) public {
        _a * _a / 25000;
    }
}
