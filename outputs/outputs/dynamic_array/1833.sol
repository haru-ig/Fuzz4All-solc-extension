pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithoutAssignment {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldNonFixed1;
    constructor() {
        fieldNonFixed1.member1 = 0;
        fieldNonFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldNonFixed1.member1 = 1;
        return fieldNonFixed1.member2;
    }
}
contract SemanticallyEquivalentNonFixedDynamicNonFixedSizeArrayWithoutAssignment{
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldNonFixed1;
    constructor() {
        fieldNonFixed1.member1 = 0;
        fieldNonFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldNonFixed1.member1 = 1;
        fieldNonFixed1.member2 = 1;
        return fieldNonFixed1.member2;
    }
}
