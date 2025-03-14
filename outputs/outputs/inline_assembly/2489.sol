pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    constructor(uint _a) {
        _a=_a + 1;
    }
    assembly {
        mstore(0x0, _increase)
    }
    function setIncrease(uint _increase) public {
        _a++;
    }
}
