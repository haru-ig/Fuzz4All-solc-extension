pragma solidity ^0.8.0;
contract MutateWithStorageAndStorageAccess {
    uint16 internal arrayData;
    function modifyArray() external {
        arrayData = 3200;
        address storage myArrayAddress = msg.sender;
        myArrayAddress[3] = 2200;

    }
}
