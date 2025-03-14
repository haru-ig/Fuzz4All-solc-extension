pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8 public fieldBinaryOneElement;
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinaryOneElement = 3;
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinaryOneElement = 3;
        fieldBinary[2] = 3;
        fieldBinary[1] = fieldBinary[1] + 1;
        return fieldBinary[2];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentWithMutation {
    uint8 constant numberofElements = 3;
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinaryOneElement = 3;
    fieldBinary = new uint8[](numberofElements);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldBinaryOneElement = 3;
        fieldBinary[2] = 3;
        fieldBinary[1] = fieldBinary[1] + 1;
        return fieldBinary[2];
    }
}
