pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinary[2] = 3;
        fieldBinary[1] = fieldBinary[1] + 1;
        return fieldBinary[2];
    }
}
