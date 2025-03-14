pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedStaticNonFixedSizeArrayWithAssignment {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    dynamic ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed1.member1 = 2;
        fieldFixed1.member2 = 2;
        return fieldFixed1.member2;
    }
}
contract SemanticallyEquivalentDynamicFixedNonFixedStaticNonFixedSizeArrayWithAssignment {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    dynamic ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns (uint) {
        fieldFixed1.member1 = 2;
        fieldFixed1.member2 = 2;
        return fieldFixed1.member2;
    }
}
contract Semantically
