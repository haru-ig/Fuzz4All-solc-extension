pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedNonFixedDynamicFixedSizeArrayWithoutAssignment_1p2_V0_8 {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct public fieldWithoutAssignment;
    ItemStruct public fieldFixedSize1;
    ItemStruct public fieldFixedSize2;
    constructor() {
        fieldWithoutAssignment.member1 = 0;
        fieldWithoutAssignment.member2 = 0;
        fieldFixedSize1.member1 = 1;
        fieldFixedSize1.member2 = 1;
        fieldFixedSize2.member1 = 2;
        fieldFixedSize2.member2 = 2;
    }
    function FixedDynamicList() public returns(uint) {
        fieldWithoutAssignment.member1 = 1;
        fieldWithoutAssignment.member2 = 1;
        fieldFixedSize1.member1 = 2;
        fieldFixedSize1.member2 = 2;
        fieldFixedSize2.member1 = 3;
        fieldFixedSize2.member2 = 3;
        return fieldWithoutAssignment.member1+fieldWithoutAssignment.member2+fieldFixedSize1.member1+fieldFixedSize1.member2+fieldFixedSize2.member1+fieldFixedSize2.member2;
    }
}
pragma solidity ^0.8.0;


contract SemanticallyEquivalentArray_V0_8
{
    ItemStruct public arrayNonFixed;
    uint256 public index;
    ItemStruct[] arrayFixed;
    ItemStruct[] arrayFixedTwoDimensional;
    ItemStruct[1] arrayFixedOneDimensional;
    uint[] arrayNonFixed_nonfixed;
    mapping(uint8 => uint16) map
