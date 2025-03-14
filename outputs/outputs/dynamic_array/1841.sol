pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicFixedArrayWithoutAssignment {
    uint256[] public fieldFixed;
    constructor() {
        fieldFixed[0] = 0;
        fieldFixed[1] = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed[0] = 1;
        return fieldFixed[1];
    }
}
contract SemanticallyEquivalentNonDynamicFixedArrayWithoutAssignment{
    uint256[] public fieldFixed;
    constructor() {
        fieldFixed[0] = 0;
        fieldFixed[1] = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed[0] = 1;
        fieldFixed[1] = 1;
        return fieldFixed[1];
    }
}
