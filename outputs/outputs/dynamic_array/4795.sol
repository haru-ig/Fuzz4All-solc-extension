pragma solidity ^0.8.0;
contract Test4 {
    uint8 storageData[10];

    function MutateData() public {
        storageData.length = 0;
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}
