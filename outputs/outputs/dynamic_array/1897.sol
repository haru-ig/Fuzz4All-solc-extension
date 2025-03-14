pragma solidity ^0.8.0;
contract MutatingBinaryarrayWithAssignment {
    uint256[] public fieldBinary;
    constructor() public {
    fieldBinary.push(2);
    fieldBinary = new uint256[](2);
    fieldBinary[0] = 3498;
    fieldBinary.push(2);
    }
    function BinaryMutatableArray() public returns(uint256) {
        return fieldBinary[0];
    }
}
