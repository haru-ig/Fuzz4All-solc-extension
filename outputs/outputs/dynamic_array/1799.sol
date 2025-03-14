pragma solidity ^0.8.0;
contract FixedDynamicNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 dataSize;
        uint256 member1;
    }
    Struct1 public fieldFixed1;
    constructor() {
        fieldFixed1.dataSize = 0;
        fieldFixed1.member1 = 0;
    }
    function FixedDynamicList() public returns(uint256) {
        fieldFixed1.dataSize = 32;
        fieldFixed1.member1 = 2;
        return fieldFixed1.dataSize;
    }
}
