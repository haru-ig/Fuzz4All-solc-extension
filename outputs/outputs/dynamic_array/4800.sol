pragma solidity ^0.8.0;
contract Test5 {
    uint8[] memoryData;
    function MemoryData() public {
        memoryData = new uint8[](0);
        memoryData.push(10);
        memoryData.push(100);
        memoryData.push(200);
    }
}
