pragma solidity ^0.8.0;
contract M10{
    uint public x;
    uint public y;
    struct Struct {
        uint x;
        uint y;
    }
    struct ArrayStruct {
        uint x;
        uint y;
        uint[] z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {
        x = 1000;
        y = 128;
        values[42] = ArrayStruct(uint(0), uint(42), new uint[](2));
    }
}
contract M12{
    uint public x;
    uint public y;
    struct Struct {
        uint x;
        uint y;
    }
    struct ArrayStruct {
        uint x;
        uint y;
        uint z;
    }
    mapping(uint => ArrayStruct) public values;
    constructor() {
        x = 1000;
        y = 128;
        values[42] = ArrayStruct(uint(0), uint(42), [uint(42), uint(1367)]);
    }
}
