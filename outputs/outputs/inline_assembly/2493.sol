pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    uint counter;
    constructor() {

        assembly {
            _a := _a + 1 + counter
        }
    }
    function setIncrease(uint _increase) public {
        _a += 2;

        counter += 1;
    }
}
