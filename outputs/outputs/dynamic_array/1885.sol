pragma solidity ^0.8.0;
contract SemanticallyEquivalentVariablebinaryarrayWithAssignment {
    uint8[][10] public fieldVariableBinary;
    constructor() public {
        fieldVariableBinary[1].push(0);
        fieldVariableBinary[1].push(1);
    }
    function VariableBinaryArrayWithAssignment() public returns(uint8) {
        for(uint i = 1; i < 10; i++) {
            fieldVariableBinary[1][i];
        }
        return fieldVariableBinary[1][1];
}
