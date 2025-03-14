pragma solidity ^0.8.0;
contract Test5 {
    uint8[2] storageData;
    function MutateData() public {
        storageData[0] = 10;
        storageData[1] = 100;
        storageData[2] = 200;
    }
}
