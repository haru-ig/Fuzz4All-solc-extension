pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    address[3] internal arrayData = [0, 22, 9];
    function modifyArray() public {

        arrayData[1] = 33;
        arrayData[2] = 2200;
    }
}
