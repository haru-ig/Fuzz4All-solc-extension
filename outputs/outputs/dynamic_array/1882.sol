pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(1);
        fieldBinary.push(0);
        fieldBinary[1] = 0;
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary.push(0);
            fieldBinary[i] = 1;
        }
        return fieldBinary[0];
    }
}
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(1);
        fieldBinary.push(0);
        fieldBinary[1] = 1;
        fieldBinary[0] = 0;
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary.push(0);
        }
        return fieldBinary[0];
    }
}
