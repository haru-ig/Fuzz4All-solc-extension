pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentMutation {
    uint8 [] public fieldBinary;
    uint8 [] public tempFieldBinary;
    constructor() public {
    tempFieldBinary = new uint8[](3);
    tempFieldBinary[0] = 2;
    tempFieldBinary[1] = 1;
    tempFieldBinary[2] = 0;
    fieldBinary = tempFieldBinary;
    }
    function BinaryArrayAssignmentMutation() public returns(uint8) {
        fieldBinary[0] = 2;
        return fieldBinary[0];
    }
}
