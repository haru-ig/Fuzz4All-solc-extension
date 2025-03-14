pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayNoAssignment {
    uint8[] public fieldBinary;
    constructor() public {
        for(uint i = 1; i < 10; i++)
            fieldBinary[i] = 0;
        fieldBinary[1];
    }
    function BinaryArrayNoAssignment() public returns(uint8) {
        for(uint i = 1; i < 10; i++)
            fieldBinary[i] = 0;
        return fieldBinary[1];
    }
}
