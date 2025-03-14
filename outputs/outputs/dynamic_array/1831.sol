pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithNew {
    struct ItemStruct {
        uint16 member1;
        uint16 member2;
    }
    ItemStruct public fieldFix1;
    struct ItemStruct2 {
        uint32 member1;
        uint32 member2;
    }
    ItemStruct2 public fieldFix2, fieldFix3;

    constructor () {
        fieldFix2.member1 = 0;
        fieldFix2.member2 = 0;
        fieldFix3.member1 = 0;
        fieldFix3.member2 = 0;
        fieldFix1.member1 = 2;
        fieldFix1.member2 = 2;
    }
    function FixedArray() public returns(uint) {
        fieldFix2.member2 = 2;
        fieldFix2.member1 = 2;
        fieldFix3.member2 = 2;
        fieldFix3.memer1 = 2;
        return fieldFix1.member1;
    }
    function VariableSizeArray() public returns (uint){
        fieldFix1.member
