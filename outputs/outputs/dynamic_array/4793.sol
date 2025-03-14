pragma solidity ^0.8.0;
contract Test4 {
    uint[] storageData;

    function MutateData() public {
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);
    }
}
contract Test5 {
    uint[] storageData;


    function MutateData() public {
        for (uint8 i = 0; i < 8; i++) {
            storageData.push(10 + (i * 5));
        }
    }
}
