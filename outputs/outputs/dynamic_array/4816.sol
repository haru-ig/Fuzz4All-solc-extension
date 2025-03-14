pragma solidity ^0.8.0;
contract Test6 {
    uint8[] memoryData;
    function MemoryData() public {
        uint256 length = memoryData.length;
        memoryData.push(0);
        uint256 nextLength = memoryData.length;
        if (nextLength > length) {
            memoryData.push(1);
            uint256 nextNextLength = memoryData.length;
            if (nextNextLength > nextLength) {
                memoryData.push(8);
            }
        }
    }
}
