pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithOld {
    struct ItemStruct {
        uint member1;
        uint member2;
    }
    ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed1.member1 = 2;
        return fieldFixed1.member2;
    }
}
