pragma solidity ^0.8.0;
contract Test4 {
    uint8[0] storageData;
    function MutateData() public {
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}
