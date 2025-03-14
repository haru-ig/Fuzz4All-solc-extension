pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    uint16 data = 0;
        fieldBinary[0] = data;
        fieldBinary[1] = fieldBinary[1] + 1;
        data += 1;
        data += 1;
        if (data > fieldBinary[1])
            fieldBinary = new uint8[](data);
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinary[2] = 3;
        uint16 data = 0;
        fieldBinary[0] = fieldBinary[0] + 1;
        data += 1;
        data += 1;
        if (data > fieldBinary[0])
            fieldBinary = new uint8[](data);
        if (data > fieldBinary[0])
            return fieldBinary[2];
        return fieldBinary[1];
    }
}
