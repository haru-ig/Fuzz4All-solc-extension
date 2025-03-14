pragma solidity ^0.8.0;
contract MutatedFallbackModifierSemanticallyEquiv {
    uint256 constant INITIAL_VALUE = 31;
    uint256 storedNumber;
    constructor() {
        storedNumber = INITIAL_VALUE;
    }
    function setZ(uint256 _val) public {
        storedNumber = _val;
    }
}
