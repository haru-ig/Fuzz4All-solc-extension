pragma solidity ^0.8.0;
interface MemoryAccessMutatorMutator {
  function readByteArray(uint256) external view returns (uint8 memory);
}

contract ArrayMutatorMutator is ArrayMutatorMutator {

  function updateAddressType(uint256 index) override public {
    memory[4] memory memoryArray;
    memoryArray[0] = 1;
    memoryArray[1] = 2;
    memoryArray[2] = 3;
    memoryArray[3] = 4;
    memory[4] storage storageArray;
    storageArray.length = 4;
    storageArray = memoryArray;
  }
}
