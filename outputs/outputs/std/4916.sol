pragma solidity ^0.8.0;
contract MutateWithStorageAccess {
    struct Array {
        uint16[] array;
    }
    Array internal array;
    function modifyArray() external {
        array.array[0] = 3200;
    }
}
