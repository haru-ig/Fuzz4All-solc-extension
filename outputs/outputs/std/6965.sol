pragma solidity ^0.8.0;
contract MutatedArray {
    uint256 internal mutable uintValue;
    uint256[] internal arrayValue;
    uint256[] internal mutatedArrayValue;
    uint256 internal mutatedArrayValueIndex;
    function() {
        uintValue = 4;
        arrayValue[uintValue] = 0;
    }
}
