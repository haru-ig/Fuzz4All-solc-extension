pragma solidity ^0.8.0;
contract Test {
    byte[] memoryData;
    function MemoryData() public {
        memoryData = bytes(new byte[](0));
        storageData() = 'Hello';
        bytes memory memoryByteArray = new bytes(10);
        memoryByteArray[0] = 'K';
        memoryData.push(memoryByteArray);
    }
    function storageData() public {
        for (uint8 i = 0; i < 10; i++) {
            storageData[0][i] = 'A';
        }
    }
}
