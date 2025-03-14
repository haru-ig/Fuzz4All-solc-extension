pragma solidity ^0.8.0;
contract Array6{
    uint public x;
    uint public y;
    uint public z;
    uint public w;
    constructor() public payable {
        x = 36;
        z = 24;
        w = 8;
        arraySetUint(x);
        arraySetUint(y);
        arrayAddUint(x);
        arrayAddUint(y);
        arraySubUint(x);
        arraySubUint(y);
        arrayMulUint(x);
        arrayMulUint(y);
        arrayDivUint(x);
        arrayDivUint(y);
    }
    function arrayGetUint(uint i) public view returns(uint) {
        return memory[32][(memoryGetStorageLength() + i + memoryGetMemorySize()) % memoryGetStorageLength()][32 + 32 * i];
    }
    function arrayGetUintAt(uint i, uint a) public view returns(uint) {
        return memory[32][(memoryGetStorageLength() + i + memoryGetMemorySize()) % memoryGetStorageLength()][32 + 32*i + 32 * a];
    }
    function arraySetUint(uint i) private {
        memory[32][(memoryGetStorageLength() + i + memoryGetMemorySize()) % memoryGetStorageLength()][32] = i;
    }
    function arraySetUintAt(uint i, uint a) private{
        memory[32][(memoryGetStorageLength() + i + memoryGetMemorySize()) % memoryGetStorageLength()][32 + 32 * a] = i;
    }
    function arrayAddUint(uint a) public {
       memory[32][(memoryGetStorageLength() + x + memoryGetMemorySize())%memoryGetStorageLength()][32 + 32*a] = memory[32][(memoryGetStorageLength() + x + memoryGetMemorySize())%memoryGetStorageLength()][32 + 32*a] + a;
    }
    function arraySubUint(uint a) public {
       memory[32][(memoryGetStorageLength() + x + memoryGetMemorySize())%memoryGetStorageLength()][32 + 32*a] = memory[32][(
