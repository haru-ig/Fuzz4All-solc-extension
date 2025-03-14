pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[] public fixedSize;
    constructor() public {
    fixedSize = new uint8[](3);
    fixedSize[0] =  1;
    fixedSize[1] =  0;
    fixedSize[2] =  2;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinary[2] =  3;
        return fieldBinary[2];
    }
}
