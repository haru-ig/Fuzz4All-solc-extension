pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayAfterAssignment {
    uint8[] public fieldBinary;
    uint8 _arraySize = 0;
    constructor() public {
        fieldBinary.push(0);
    }
    function BinaryArrayAfterAssignment() public {
        for(uint i = 1; i < 10; i++) {
            fieldBinary.push(0);
            fieldBinary[i];
        }
    }
    function BinaryArrayAfterAssignmentWithAssignment() public {
        fieldBinary[1] = 5;
    }
}


pragma solidity ^0.8.0;
contract BinaryArrayWithAssignmentAndReassignmentAfterAssignment {
    uint8[] public fieldBinary;
    uint8 _arraySize = 0;
    uint8 _arrayIndex = 0;
    constructor() public {

    }
    function BinaryArrayWithAssignmentAndReassignAfterAssignment() public {
        for(uint i = 0; i < 10; i++) {
            fieldBinary[i+1- fieldBinary[i]];
            if (i < 5) { fieldBinary[i] = 0; _arrayIndex = i; }

        }
    }
}
contract BinaryArrayWithAssignmentAndReassignAfterAssignmentWithReassignment {
    uint8[] public fieldBinary;
    uint8 _arraySize = 0;
    uint8 _arrayIndex = 0;
    constructor() public {

    }
    function BinaryArrayWithAssignmentAndReassignAfterAssignmentWithReassign() public {
        for(uint i = 0; i < 10; i++) {
            fieldBinary[i+ _arrayIndex] = 0;
            if (i < 5) { _arrayIndex = i+1; }
        }
    }
}


pragma solidity ^0.8.0;
contract DynamicArraySizeInFunctionAndAssignment {
    uint8[] public fieldBinary;
    uint8 _arraySize = 0;
    uint8 _arrayIndex = 0;
    constructor() public {

    }
    function DynamicArraySizeInFunctionAndAssignmentWithAssignment() public {
