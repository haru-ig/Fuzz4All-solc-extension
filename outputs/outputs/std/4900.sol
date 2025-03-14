pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    uint[3] aData = [0, 22, 9];
    function modifyArray() public {
        aData = [2, 33, 2200];
    }
}
