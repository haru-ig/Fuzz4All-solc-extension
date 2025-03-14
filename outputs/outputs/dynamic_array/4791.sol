pragma solidity ^0.8.0;
contract Test3 {
    uint8[6] storageData;
    function MutateData() public {
        storageData.push(10);
        storageData.push(100);
        storageData[0] = 200;
        storageData[1] = 300;
        storageData[2] = 400;
        storageData[3] = 500;
        storageData[4] = 600;
        storageData[5] = 700;
    }
}
