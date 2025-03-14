pragma solidity ^0.8.0;
contract MutateWithMemoryAccess_OldContract {
    uint[3] internal arrayData = [0, 22, 9];
    function modifyArray() public {
        arrayData[0] = 35;
        arrayData[2] = 2200;
    }
}


pragma solidity ^0.8.0;
