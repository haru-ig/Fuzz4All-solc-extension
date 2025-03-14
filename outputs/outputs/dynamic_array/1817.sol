pragma solidity ^0.8.0;
contract FixedSemanticallyEquivalentArrayWithNew {
    struct ItemStruct {
        uint member1;
        uint256 member2;
    }
    ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 1;
        fieldFixed1.member2 = 3;
    }
    function FixedSemanticallyEquivalentList() public returns(uint) {
        fieldFixed1.member1 = 2;
        return fieldFixed1.member2;
    }
}
