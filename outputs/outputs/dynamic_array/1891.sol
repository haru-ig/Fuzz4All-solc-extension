pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 0;
    fieldBinary[1] = 1;
    fieldBinary.push(2);
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        fieldBinary[3];
    }
}
