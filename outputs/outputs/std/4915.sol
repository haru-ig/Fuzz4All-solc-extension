pragma solidity ^0.8.0;
contract StorageAccessAfterMutation {
    uint internal storageArray;
    function modifyArray() external {
        storageArray = 3200;
    }
}
