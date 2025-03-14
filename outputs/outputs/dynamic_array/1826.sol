pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedStaticNonFixedNonStaticNonFixedArrays {
    struct ItemStruct {
        uint16 member1;
        uint16 member2;
    }
    ItemStruct public fieldNonFixed;
    bytes16 public fieldFixed;
    constructor() {
        fieldNonFixed.member1 = 0;
        fieldNonFixed.member2 = 0;
        fieldFixed = "0x";
    }
    function FixedNonStaticArray() public returns(uint) {
        fieldNonFixed.member1 = 2;
        fieldNonFixed.member2 = 2;
        fieldFixed[0] = "0x";
        return fieldNonFixed.member2;
    }
}
contract SemanticallyEquivalentNonFixedStaticNonFixedNonStaticNonFixedArrays {
    struct ItemStruct {
        uint16 member1;
        uint16 member2;
    }
    ItemStruct public fieldNonFixed;
    bytes16 public fieldFixed;
    constructor() {
        fieldNonFixed.member1 = 0;
        fieldNonFixed.member2 = 0;
        fieldFixed = "0x";
    }
    function FixedNonStaticArray() public returns(uint) {
        fieldNon
