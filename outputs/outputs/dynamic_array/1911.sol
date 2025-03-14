pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentNoCalldata {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary = new uint8[](3);
        fieldBinary[0] = 1;
        fieldBinary[1] = 0;
        fieldBinary[2] = 2;
    }

    function BinaryArrayWithAssignmentNoCalldata(uint8[] calldata a) public {
    FieldBinary = a;
    }
	function BinaryArrayWithAssignmentNoCalldata() public  {
    FieldBinary = fieldBinary[1]++;
    }
    function SemanticallyEquivalentBinaryarrayWithAssignmentNoCalldata(uint8[] memorya) public{
    FieldBinary = memorya[1]++;
    }

	uint8[] public FieldBinary;
    function BinaryArrayWithVariable() public returns(uint8) {
        FieldBinary[2] = 3;
        FieldBinary[1] = 0;
        return FieldBinary[2];
    }
}
