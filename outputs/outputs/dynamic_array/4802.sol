pragma solidity ^0.8.0;
contract Test5 {
    uint8[100] storageData;
    function MutateData() public {
        storageData = new uint8[](0);
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}
