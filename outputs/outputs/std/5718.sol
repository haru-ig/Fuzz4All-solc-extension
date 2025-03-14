pragma solidity ^0.8.0;
contract MemorySizeTest{
    Memory1 public memory1;
    Memory2 public memory2;
    Memory3 public memory3;
    constructor() {
        memory1 = memory2 = memory3 = Memory1(memory1.storageGetMemorySize() ** 3 / 2 ** 64, memory2.storageGetMemorySize() ** 3 / 2 ** 64, memory3.storageGetMemorySize() ** 3 / 2 ** 64);
    }
}
