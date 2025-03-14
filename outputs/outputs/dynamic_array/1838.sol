pragma solidity ^0.8.0;
contract SemanticallyEquivalentNonFixedDynamicNonFixedSizeArrayWithAssignment{
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
        assign();
        return fieldNonFixed1.member2;
    }
    function assign () {
        fieldNonFixed1.member1 = 1;
    }
}
