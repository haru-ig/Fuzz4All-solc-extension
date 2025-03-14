pragma solidity ^0.8.0;
library SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8 [] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayAssignmentWithMutation() public {
        fieldBinary.length += 1;
        fieldBinary[fieldBinary.length - 1] = 1;
    }
}
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithoutMutation {
    uint8 [] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayAssignmentWithoutMutation() public {
        fieldBinary = new uint8[](fieldBinary.length + 1);
        fieldBinary[fieldBinary.length - 1] = 1;
    }
}
