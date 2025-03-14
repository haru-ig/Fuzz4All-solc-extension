pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithFixedLengthsAndNew {
    ItemStruct public fieldFixed4;
    ItemStruct public fieldFixed5;
    ItemStruct public fieldFixed10;
    ItemStruct public fieldFixed11;
    ItemStruct public fieldFixed12;
    ItemStruct public fieldFixed16;
    ItemStruct public fieldFixed17;
    ItemStruct public fieldFixed32;
    constructor() {
        fieldFixed4.member1 = 0;
        fieldFixed4.member2 = 0;
        fieldFixed5.member1 = 2;
        fieldFixed5.member2 = 0;
        fieldFixed10.member1 = 5;
        fieldFixed10.member2 = 0;
        fieldFixed11.member1 = 11;
        fieldFixed11.member2 = 0;
        fieldFixed12.member1 = 15;
        fieldFixed12.member2 = 0;
        fieldFixed16.member1 = 12;
        fieldFixed16.member2 = 0;
        fieldFixed17.member1 = 31;
        fieldFixed17.member2 = 0;
        fieldFixed32.member1 = 11;
        fieldFixed32.member2 = 12;
    }
    function FixedDynamicList() public returns(uint) {
        fieldFixed16.member2 = 31;
        return fieldFixed32.member1;
    }
}
