pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    uint16 internal arrayData = 0;
    function modifyArray() external {
        arrayData = 3200;
    }
}
