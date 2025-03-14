pragma solidity ^0.8.0;
contract DynamicFixedSizesArray {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 size1;
        ItemStruct dataList[5];
    }
    Struct1 public fieldDynamic1;
    Struct1 public fieldDynamic2;
    constructor() {
        fieldDynamic1.size1 = 0;
    }
    function DynamicSetList() public returns(uint) {
        fieldDynamic2.dataList[4] = ItemStruct(1);
        fieldDynamic1.size1 = 5;
        return fieldDynamic1.size1;
    }
}
