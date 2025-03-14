pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssignmentToNestedBinaryarray {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push([1]);
        fieldBinary['1'].push(25);
    }
    function AssignmentToNestedBinaryarray() public returns(uint8) {
        for(uint i = 1; i < 10; i++) {
            fieldBinary.push([1]);
            fieldBinary['1'].push(25*i);
        }
        return fieldBinary['1'][2];
    }
}
