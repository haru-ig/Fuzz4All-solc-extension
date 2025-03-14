pragma solidity ^0.8.0;
contract Test3 {
    uint8[] storageData;
    function MutateData() public {
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}
