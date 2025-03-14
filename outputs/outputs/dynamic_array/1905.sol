pragma solidity ^0.8.0;
contract A {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 0;
    fieldBinary[1] = 0;
    fieldBinary[2] = 0;
    }
    function BinaryArrayWithAssignmentWithMutation2() public returns(uint8) {
        fieldBinary[2] = 0;
        return fieldBinary[2];
    }
}
contract MutatedBinaryArrayWithAssignmentWithMutation {
    address public myAddress;
    uint8[] public fieldBinary;
    constructor(address _myAddress) public {
    myAddress = _myAddress;
    fieldBinary = new uint8[](3);
    }
    function BinaryArrayWithAssignmentWithMutation() public returns(uint8)
    {
        fieldBinary[2] = 0;
        return fieldBinary[2];
    }

    function MutatedBinaryArrayWithAssignmentWithMutation1() public returns(uint8) {
        uint8[] memory a;
        a = new uint8[](1);
        delete a[0];
        return a.length;
    }
    function MutatedBinaryArrayWithAssignmentWithMutation() public returns(uint8) {
        return BinaryArrayWithAssignmentWithMutation();
    }
}
