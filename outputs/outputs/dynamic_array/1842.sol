pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedArrayWithoutAssignment {
    uint256[] constant public fieldFixed1;
    constructor() {
        fieldFixed1[0] = 0;
        fieldFixed1[1] = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed1[0] = 1;
        return fieldFixed1[1];
    }
}
contract SemanticallyEquivalentNonDynamicFixedarrayWithoutAssignment {
    uint256[] constant public fieldFixed1;
    constructor() {
        fieldFixed1[0] = 0;
        fieldFixed1[1] = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed1[0] = 1;
        fieldFixed1[1] = 1;
        return fieldFixed1[1];
    }
}
