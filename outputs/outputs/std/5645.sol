pragma solidity ^0.8.0;
contract M82{
    uint public x;
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    constructor() {
        x = 1367;
        values[42] = ArrayStruct(uint(0), uint(42), uint(1367));
        ArrayStruct memory memoryStruct = ArrayStruct((0x00), (0x42), (0xD7));
        memoryStruct = ArrayStruct((0xD8), (0x42), (0x9E));
        values[42] = memoryStruct;
    }
}
