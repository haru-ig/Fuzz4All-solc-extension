pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(0);
        fieldBinary.push(1);
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        fieldBinary.push(2);
        fieldBinary.push(3);
        return fieldBinary[0];
    }
}
