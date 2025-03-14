pragma solidity ^0.8.0;
contract M8{
    uint constant public one = 1;
    uint public constant a = 1000;
    uint8 public constant b = 128;
    ArrayStruct[] public names;
    constructor() {
        names.push(ArrayStruct(uint8(b), uint16(123)));
    }
}
