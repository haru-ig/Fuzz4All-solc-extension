pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(0);
        fieldBinary[1] = fieldBinary.length - 1;
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary[0] = fieldBinary.length;
        }
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        return fieldBinary[fieldBinary.length];
    }
}
