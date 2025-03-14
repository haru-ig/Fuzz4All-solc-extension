pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayArray {
    uint8[][] public fieldBinary;
    constructor() public {
        fieldBinary.push([]);
        fieldBinary.push([1]);
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        fieldBinary.push([2, 3]);
        fieldBinary.push([4]);
        return fieldBinary[0][0];
    }
}
