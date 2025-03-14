pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment {
    uint8[] internal fieldBinary;
    Address internal _contractOwner;
    constructor() public {
        fieldBinary.push(0);
        _contractOwner = msg.sender;
    }
    function BinaryArrayWithAssignment() public returns(uint8) {
        for(uint i = 0; i < fieldBinary.length; i++) {
            fieldBinary.push(0);
        }
        require(msg.sender == _contractOwner);
        return fieldBinary[0];
    }
}
