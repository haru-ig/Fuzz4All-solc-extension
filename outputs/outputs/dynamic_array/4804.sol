pragma solidity ^0.8.0;
contract Test4 {
    function MutateData() public {
        uint8[] storageData;
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
