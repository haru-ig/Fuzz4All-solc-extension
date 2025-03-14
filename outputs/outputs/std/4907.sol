pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    uint[3] arrayData;
    function setArray() public {
        arrayData[1] = 33;
        arrayData[2] = 2200;
    }
}
