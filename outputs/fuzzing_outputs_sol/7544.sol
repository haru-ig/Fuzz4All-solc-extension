pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    constructor() {
        storedNumber = 17;
    }

    fallback() external payable {
        storedNumber = 18;
    }
}
