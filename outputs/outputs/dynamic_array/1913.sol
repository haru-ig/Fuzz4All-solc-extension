pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayWithAssignmentWithMutation {
    uint8[] public fieldArray;
    constructor() public {
    fieldArray = new uint8[](3);
    fieldArray[0] = 1;
    fieldArray[1] = 0;
    fieldArray[2] = 2;
    }
    function ArrayWithAssignmentWithMutation() public returns(uint8) {
        fieldArray[2] = 3;
        fieldArray[1] = fieldArray[1] + 1;
        return fieldArray[0];
    }
}
Contract SemanticallyEquivalentBinaryarrayWithAssignmentWithInvocationWithMutation {
  function binaryarrayWithAssignmentWithMutation_testFunction() public returns (uint256) {
            uint8[] memory _fieldBinary = new uint8[](3);
            _fieldBinary[0] = 1;
            _fieldBinary[1] = 0;
            _fieldBinary[2] = 2;
            fieldBinary[2] = 3;
            fieldBinary[1] = fieldBinary[1] + 1;
            return fieldBinary[2];
  }
}
Contract SemanticallyEquivalentArrayWithAssignmentWithInvocationWithMutation {
  function arrayWithAssignmentWithMutation_testFunction() public returns (uint256) {
            uint8[] memory _fieldArray = new uint8[](3);
            _fieldArray[0] = 1;
            _fieldArray[1] = 0;
            _fieldArray[2] = 2;
            fieldArray[2] = 3;
            fieldArray[1] = fieldArray[1] + 1;
            return fieldArray[0];
  }
}
