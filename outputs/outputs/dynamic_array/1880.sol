pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithModification {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(1);
        fieldBinary.push(0);
    }
    function BinaryArrayWithModification() public view returns(uint8) {
        fieldBinary[1] = 0;
        for (uint i = 0; i < fieldBinary.length; i++)
        {
            fieldBinary[i];
            fieldBinary[fieldBinary.length - 1] = 0;
        }
        return fieldBinary[0];
    }
}
