pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataArrayWithAssignment2 {
    uint[] public fieldCalldata1;
    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        return fieldCalldata1[0];
    }
}
contract SemanticallyEquivalentCalldataArrayWithAssignment3{
    address[] public fieldCalldata1;
    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        return fieldCalldata1[0];
    }
}
