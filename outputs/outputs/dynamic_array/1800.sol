pragma solidity ^0.8.0;
contract FixedDynamicNonFixedSizesArrayEquivalency {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 dataSize;
        uint256 member1;
    }
    Struct1 fieldFixed1;
    constructor() {
    }
    function FixedDynamicList() public returns(uint256) {
        fieldFixed1.dataSize = 10;
        fieldFixed1.member1 = 4;
        return fieldFixed1.dataSize;
    }
}
