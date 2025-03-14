pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarray {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(0);
        fieldBinary.push(3);
        fieldBinary.push(1);
    }
    function BinaryArray() public returns(uint8) {
        fieldBinary.push(2);
        fieldBinary.push(2);
        return fieldBinary[0];
    }
