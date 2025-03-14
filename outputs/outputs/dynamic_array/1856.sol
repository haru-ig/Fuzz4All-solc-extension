pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataAndNonDynamicNonFixedarrayWithAssignment2 {
    uint[] public fieldCalldata1;
    uint[] public fieldCalldata2;
    constructor() {
        fieldCalldata1.push(0);
        fieldCalldata1.push(1);
        fieldCalldata2[0] = 2;
        fieldCalldata2[1] = 3;
    }
    function CalldataArrayWithAssignment() public returns(uint) {
        fieldCalldata1.push(2);
        fieldCalldata1.push(3);
        return fieldCalldata1[0];
    }
    function NonDynamicNonFixedarrayWithAssignment() public returns(uint) {
        fieldCalldata2.push(2);
        fieldCalldata2.push(3);
        return fieldCalldata2[0];
    }
}
