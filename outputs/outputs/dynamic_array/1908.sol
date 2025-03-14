pragma solidity ^0.8.0;
contract EquivalentBinaryarrayWithAssignmentWithMutation {
    uint8[] public fieldBinary;
    constructor() public {
    fieldBinary = new uint8[](3);
    fieldBinary[0] = 1;
    fieldBinary[1] = 0;
    fieldBinary[2] = 2;
    }
    function BinaryArrayWithAssignmentWithMutationMutated() public returns(uint8) {
        fieldBinary[0] = 4;
        return fieldBinary[0];
    }
}

function EquivalentBinaryarrayWithAssignmentWithMutationWithDynamicArrayParameter(uint8[] memory x) public return(uint8) {


    x[2] = 3;
    return x[2];
}
