pragma solidity ^0.8.0;
contract Test4 {
    uint256[] storageData;
    uint8[] public storageData2;
    function MutateData() public view {
        storageData.push(10);
        storageData.push(100);
        storageData.push(200);

        storageData2.push(10);
        storageData2.push(100);
        storageData2.push(200);
    }
}
