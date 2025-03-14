pragma solidity ^0.8.0;
contract M8{
    uint public x;

    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;

    constructor() {
        x = 1367;
        values[42] = ArrayStruct(uint(0), uint(42), uint(1367));
    }
}
