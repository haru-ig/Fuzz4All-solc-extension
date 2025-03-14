pragma solidity ^0.8.0;
contract Test5 {
    uint8[] internal storageData;
    function MutateData() public {
        storageData = [];
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}

```
