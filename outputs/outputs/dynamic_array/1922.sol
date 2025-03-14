pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignmentOneMutation {
    uint8 [] public fieldBinary;
    address payable  contractAddress;
    constructor() public {
    contractAddress  = payable (address(0xd944535A330AB5bABD2F37c47308F01640e06b00));
    fieldBinary = new uint8[](1);
    fieldBinary[0] = 1;
    fieldBinary[1] += 1;
    }
    function BinaryArrayAssignmentOneMutation() public returns(uint8) {
        fieldBinary[0] += 1;
        return fieldBinary[0];
    }
}
