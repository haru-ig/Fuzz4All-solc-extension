pragma solidity ^0.8.0;
contract Test6 {
    uint8[] memoryData;
    function MemoryData() public {
        memoryData.push(0);
        memoryData.push(1);
        memoryData.push(8);
        memoryData.push(255);
    }
}
