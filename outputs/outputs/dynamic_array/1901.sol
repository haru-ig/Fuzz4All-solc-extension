pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinary[0] += 1;
        fieldBinary[2] += 1;
        return fieldBinary[2];
    }
}
