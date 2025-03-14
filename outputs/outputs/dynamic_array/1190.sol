pragma solidity ^0.8.0;
contract MutatedSemanticIndependencyAndDynamicArray is SemanticIndependenceAndDynamicArray {
    function setTestArray(uint[] memory newAccounts, uint testIndex)
    internal
    returns(uint) {
        if (testIndex >= newAccounts.length) {
            revert("Array too short or too long.");
        }
        uint previousSize = accounts.length;
        accounts = newAccounts;
        return previousSize;
    }
}
