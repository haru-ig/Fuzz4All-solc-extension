pragma solidity ^0.8.0;
contract MutateWithStorageAccess {
    uint16 internal arrayData;
    function modifyArray() external {
        arrayData = 3200;
    }
}
