pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithoutAssignment2 {
    uint88[] public fieldBinary8;
    constructor() public {
        fieldBinary8.push(0);
        fieldBinary8.push(1);
    }
    function BinaryArrayWithoutAssignment2() public returns(uint88) {
        for(uint i = 0; i < fieldBinary8.length; i++) {
            fieldBinary8[1];
        }
        return fieldBinary8[0];
    }
}
