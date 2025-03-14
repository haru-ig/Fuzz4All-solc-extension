pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataArrayWithAssignment {
    uint[5] public fieldCalldata1;
    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        fieldCalldata1[1] = 1;
        return fieldCalldata1[2];
    }
}
