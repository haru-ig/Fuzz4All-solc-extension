pragma solidity ^0.8.0;
contract FixedSizesArray {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        ItemStruct dataList;
    }
    Struct1 public fieldFixed1;
    constructor() {
        fieldFixed1.dataList.member1 = 1;
    }
    function FixedSetList() public returns(uint) {
        fieldFixed1.dataList.member1 = 1;
        return fieldFixed1.dataList.member1;
    }
}
