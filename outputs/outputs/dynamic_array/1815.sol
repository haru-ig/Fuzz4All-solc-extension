pragma solidity ^0.8.0;
contract SemanticallyEquivDynamicArraysWithNew {
    struct ItemStruct {
        uint member1;
        uint256 member2;
    }
    ItemStruct[] public fieldsFixedFixed1;
    constructor() {
        fieldsFixedFixed1[0].member1 = 0;
        fieldsFixedFixed1[0].member2 = 0;
    }
    function SemanticallyEquivDynamicList() public returns(uint) {
        fieldsFixedFixed1[0].member1 = 2;
        return fieldsFixedFixed1[0].member2;
    }
}
