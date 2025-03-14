pragma solidity ^0.8.0;
contract SemanticallyEquivalentVariableArrayWithAssignmentWithMutation {
    uint[] public varBinary;
    constructor() public {
    varBinary = new uint[](3);
    varBinary[0] = 1;
    varBinary[1] = 0;
    varBinary[2] = 2;
    }
    function VariableArrayWithAssignmentWithMutation() public returns(uint) {
        varBinary[2] = 3;
        varBinary[1] = varBinary[1] + 1;
        return varBinary[2];
    }
}
