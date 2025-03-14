pragma solidity ^0.8.0;
contract ReturnDataFallbackModifier {
    uint256 constant INITIAL_VALUE = 23;
    uint256 storedNumber;
    function returnData() returns (uint256 foo) {
        storedNumber = 17;
        return foo;
    }
}
