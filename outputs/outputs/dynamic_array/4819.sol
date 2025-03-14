pragma solidity ^0.8.0;
contract MutatedTest6 {
    uint8[] memoryData;
    uint8[] memoryData2;
    uint8 memorySize;
    function MutatedMemoryData(uint8 arraySize) public {
        memoryData.push(0);
        for (uint i=0; i<arraySize; i++) {
            memoryData.push(i);
        }
        memorySize = arraySize;
    }
    function MutatedMemoryData2(uint8 arraySize) public {
        memoryData2 = memoryData;
        memoryData2.push(0);
        for (uint i=arraySize; i < 2*arraySize; i++) {
            memoryData2.push(i);
        }
    }
    function MutatedMemoryDataSize() public returns (uint8 memorySize) {
        memorySize = memoryData.length;
        return memorySize;
    }
    function MutatedMemoryDataStorage() public {
        memoryData2 = memoryData;
    }
}

pragma solidity ^0.8.0;
contract MutatedTest7 {
    uint8[] memoryData;
    uint8[] memoryData2;
    uint8 memorySize;
    function MutatedMemoryData(uint8 arraySize) public {
        memoryData.push(0);
        for (uint i=0; i<arraySize; i++) {
            memoryData.push(i);
        }
        memorySize = arraySize;
    }
    function MutatedMemoryDataStorage() public {
        memorySize = memoryData.length;
        memoryData.push(0);
    }
    function MutatedMemoryData2(uint8 arraySize) public {
        memoryData2 = memoryData;
        memoryData2.push(0);
        for (uint i=arraySize; i < 2*arraySize; i++) {
            memoryData2.push(i);
        }
    }
    function MutatedMemoryDataSize() public returns (uint8 memorySize) {
        memorySize = memoryData.length;
        return memorySize;
    }
}
