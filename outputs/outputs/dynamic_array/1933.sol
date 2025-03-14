pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithoutAssignment {
    uint8 [] public fieldBinary;
    constructor() public {
        fieldBinary.push(1);
        fieldBinary.push(3);
        fieldBinary.push(2);
    }
    function BinaryArrayAssignment() public {
        for (uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary[i] *= 100;
        }
    }
}
