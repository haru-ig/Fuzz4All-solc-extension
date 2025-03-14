pragma solidity ^0.8.0;
contract Memorize {
    bytes storageBuffer;
    Memory storageMem;
    uint8 public count;

    constructor () {
        storageBuffer = memoryBuffer();
        storageMem = new Memory();
    }

    function memoryBuffer() private view returns(bytes memory){
        uint8 memOffset = storageMem.count;
        uint8 numMem = 10**16;
        uint8 memoryLength = 3*numMem;
        bytes memory memoryBuffer = new bytes(memoryLength);
        memoryBuffer[0] = memOffset;
        memoryBuffer[1] = totalMemoryValue();
        memoryBuffer[2] = storageMem.count;
        memoryBuffer.transferFrom(storageBuffer, address(this), memoryLength);
        return memoryBuffer;
    }
    function totalMemoryValue() private view returns(uint8){
        uint8 total = 0;
        uint8 * ptr = abi.allocateMemory(4);
        memcpy(ptr, "\000", 2);
        *ptr = 1;
      if(total > 255){
        total = 0;
      }
        storageMem.count++;
        return total+1;
    }
}
