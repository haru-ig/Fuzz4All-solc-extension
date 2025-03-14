pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentModified {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 0;
    fieldBinary[1] = 1;
    fieldBinary.push(2);
    }
    function BinaryArrayWithAssignmentModified(uint8 x) public returns(uint8) {
        fieldBinary = new uint8[](3);
        fieldBinary[0] = x;
        fieldBinary = new uint8[](1);
        fieldBinary[0] = x;
        fieldBinary.push(x);
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary.pop();
        }
        return x;
    }
}
