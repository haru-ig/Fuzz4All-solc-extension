pragma solidity ^0.8.0;
contract Comp1 {
    uint _a;
    constructor(uint _a) {
        _a = _a + 1;
    }
    function setIncrease(uint _increase) public {
        assembly {
            _a++
        }
    }
}
