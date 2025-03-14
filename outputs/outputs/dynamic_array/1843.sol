pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataArrayWithAssignment {
    uint256[] public fieldCalldata1;
    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        return fieldCalldata1[0];
    }
}
contract SemanticallyEquivalentCalldataAndNonDynamicNonFixedarrayWithAssignment{
    uint256[] public fieldCalldata1;
    constructor() {
        fieldCalldata1[0] = 0;
        fieldCalldata1[1] = 0;
    }

    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        fieldCalldata1[0] = 2;
        return fieldCalldata1[0];
    }
}
