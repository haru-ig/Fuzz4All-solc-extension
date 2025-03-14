pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicNonFixedArrayWithoutAssignment {
    uint256[] public fieldNonFixed1;
    constructor() {
        fieldNonFixed1[0] = 0;
        fieldNonFixed1[1] = 0;
    }
    function NonFixedDynamicList() public returns(uint) {
        fieldNonFixed1[0] = 1;
        return fieldNonFixed1[1];
    }
}
contract SemanticallyEquivalentNonDynamicNonFixedarrayWithoutAssignment{
    uint256[] public fieldNonFixed1;
    constructor() {
        fieldNonFixed1[0] = 0;
        fieldNonFixed1[1] = 0;
    }
    function NonFixedDynamicList() public returns(uint) {
        fieldNonFixed1[0] = 1;
        fieldNonFixed1[1] = 1;
        return fieldNonFixed1[1];
    }
}
