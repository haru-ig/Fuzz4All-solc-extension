pragma solidity ^0.8.0;
contract Test6 {
    uint8[4] memoryData;
    function MemoryData() public {
        memoryData[0] = 10;
        memoryData[1] = 100;
        memoryData[2] = 200;
        memoryData[3] = 1;
    }
    function MemoryData() public {
        memoryData[3] = 3;
    }
}
