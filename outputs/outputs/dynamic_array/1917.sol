pragma solidity ^0.8.0;

contract EquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[2] public fieldBinary;
    constructor() public {
    fieldBinary[0] = 0;
    fieldBinary[1] = 0;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinary[1] += 1;
        return fieldBinary[0];
    }
}

contract EquivalentArrayWithAssignmentWithAssignment {
    uint8[3] public fieldArray;
    uint8[2] public fieldBinary;
    uint8[2] public fieldBinary2;
    constructor() public {
    fieldArray[0] = 0;
    fieldArray[1] = 0;
    fieldArray[2] = 0;
    fieldBinary[1] = 0;
    fieldBinary[0] = 0;
    fieldBinary2[0] = 0;
    fieldBinary2[1] = 0;
    }
    function ArrayWithAssignmentWithAssignment() public returns(uint8) {
        fieldArray[1] += 1;
        fieldArray[2] = 1;
        fieldBinary += 1;
        uint8[2] memory fBinary;
        fBinary[0] = 1;
        fieldBinary2 = fBinary;
        return fieldArray[0];
    }
    function BinaryArrayWithAssignmentWithAssignment() public returns(uint8) {
        fieldBinary[1] += 1;
        uint8[2] memory fBinary;
        fBinary[1] = 1;
        fBinary[0] = 1;
        fByte[1] = 1;
        return fieldArray[0];
    }
}
pragma solidity ^0.8.0;

contract EquivalentArrayWithAssignmentWithAssignment1 {
    uint8[4] public fieldArray;
    constructor() public {
    fieldArray[0] = 0;
    fieldArray[1] = 0;
    fieldArray[2] = 0;
    fieldArray[3] = 0;
    }
    function ArrayWithAssignmentWithAssignment1() public returns(uint8) {
        fieldArray[3] = fieldArray[1] + 1;
        fieldArray[1] = 0;
        return fieldArray[2];
