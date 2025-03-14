pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint size1;
        ItemStruct dataList;
    }
    Struct1 public fieldDynamic1;
    Struct1 public fieldDynamic2;
    constructor() {
        fieldDynamic1.size1 = 0;
    }
    function SemanticallyEquivalentDynamicSetList() public returns(uint) {
        fieldDynamic2.dataList.member1 = 1;
        return fieldDynamic1.size1;
    }
}
