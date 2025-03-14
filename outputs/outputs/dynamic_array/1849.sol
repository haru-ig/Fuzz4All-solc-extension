pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataArrayWithAssignment {
    uint256[] public fieldCalldata1;
    function CalldataArrayWithAssignment() public returns(uint) {
        fieldCalldata1.push(0);
        fieldCalldata1.push(1);
        return fieldCalldata1[0];
    }
}
contract SemanticallyEquivalentCalldataAndNonDynamicNonFixedarrayWithAssignment{
    uint256[] public fieldCalldata1;
    constructor() {
        fieldCalldata1.push(0);
        fieldCalldata1.push(1);
    }
    function CalldataArrayWithAssignment() public returns(uint) {
        fieldCalldata1.push(2);
        fieldCalldata1.push(3);
        return fieldCalldata1[0];
    }
}
