pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithoutAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(0);
        fieldBinary.push(1);
    }
    function BinaryArrayWithoutAssignment() public returns(uint8) {
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary[1];
        }
        return fieldBinary[0];
    }
}
