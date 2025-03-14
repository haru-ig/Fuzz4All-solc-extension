pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicNonFixedSizeArrayWithoutAssignment {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldDouble1;
    constructor() {
        fieldDouble1.member1 = 0;
        fieldDouble1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldDouble1.member1 = 1;
        fieldDouble1.member2 = 1;
        return fieldDouble1.member2;
    }
}
contract SemanticallyEquivalentEVMStackDynamicSizeArrayWithoutAssignment{
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldDouble1;
    constructor() {
        fieldDouble1.member1 = 0;
        fieldDouble1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldDouble1 = ItemStruct(1,1);
        return 1;
    }
}
