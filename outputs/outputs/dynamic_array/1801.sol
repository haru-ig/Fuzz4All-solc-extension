pragma solidity ^0.8.0;
contract FixedDynamicFixedSizesArray {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 dataSize1;
        uint256 dataSize2;
        uint256 member1;
    }
    Struct1 public fieldFixed1;
    constructor() {
        fieldFixed1.dataSize1 = 16;
        fieldFixed1.member1 = 0;
        fieldFixed1.dataSize2 = 16;
    }
    function FixedDynamicList() public returns(uint256) {
        fieldFixed1.dataSize1 = 16;
        fieldFixed1.member1 = 0;
        fieldFixed1.dataSize2 = 16;
        fieldFixed1.member1 = fieldFixed1.member1 / 2;
        return fieldFixed1.dataSize1;
    }
}
