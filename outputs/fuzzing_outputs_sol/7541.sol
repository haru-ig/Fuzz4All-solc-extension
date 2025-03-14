pragma solidity ^0.8.0;
import "./MutatedFallbackModifier.sol";
contract MutatedFallbackModifier2 {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    constructor() {
        storedNumber = 7;
    }
    function setZ(uint256 _val) public {
        storedNumber = _val;
    }
}
