pragma solidity ^0.8.0;

contract BuggedNestedArrays {
    struct ItemStruct {
        uint member1;
    }

    struct Struct1 {
        uint256 size1;
        ItemStruct[] dataList;
    }
    Struct1 public fieldNestedFixed1;
    Struct1 public fieldNestedFixed2;
    function FixedArray() public {
        fieldNestedFixed1.size1 = 0;
    }


    function BuggedNestedArray() public returns(uint) {
        fieldNestedFixed2.dataList[2] = ItemStruct(128);
        return fieldNestedFixed1.size1;
    }
}
