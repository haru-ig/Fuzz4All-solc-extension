pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentBinaryarrayWithoutAssignment {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary.push(0);
    fieldBinary.push(1);
    }
    function BinaryArrayWithoutAssignment() public returns(uint8) {
        for(uint i = 1; i < 10; i++) {
            fieldBinary[i];
            fieldBinary.push(0);
        }
        uint8 temp;
        temp = 0;
        return temp;
    }
}
