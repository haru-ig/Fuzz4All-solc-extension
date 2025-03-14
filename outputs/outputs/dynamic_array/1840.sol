pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicNonDynamicFixedArrayWithoutAssignment{
    uint256[] public fieldNonDynamic1;
    constructor() {
        fieldNonDynamic1[0] = 0;
    }
    function NonDynamicNonFixedList() public returns(uint) {
        fieldNonDynamic1[0] = 1;
        return fieldNonDynamic1[1];
    }
}
contract SemanticallyEquivalentNonDynamicNonDynamicFixedArrayWithoutAssignment{
    uint256[] public fieldNonDynamic1;
    constructor() {
        fieldNonDynamic1[0] = 0;
    }
    function NonDynamicNonFixedList() public returns(uint) {
        fieldNonDynamic1[0] = 1;
        fieldNonDynamic1[1] = 1;
        return fieldNonDynamic1[1];
    }
}
