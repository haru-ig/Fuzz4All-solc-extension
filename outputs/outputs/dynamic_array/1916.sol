pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithoutMutation {
    uint8 public immutable fieldBinary;
    constructor() public {
    fieldBinary = 3;
    }
    function BinaryArrayWithAssignmentWithoutMutation() public returns(uint8) {
        fieldBinary = fieldBinary + 1;
        return fieldBinary;
    }
}
