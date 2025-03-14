pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithoutMutationWithAssignmentAsLeftSide {
    uint8 [] public fieldBinary;
    constructor() public {
        fieldBinary = new uint8[](3);
        fieldBinary[1] = 2;
    }
    function BinaryArrayAssignmentWithoutMutation() public {
        fieldBinary[0] *= 100;
    }
}
