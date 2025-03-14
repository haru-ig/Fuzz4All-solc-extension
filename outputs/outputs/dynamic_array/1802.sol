pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 dataSize;
        uint256 member1;
    }
    Struct1 public fieldFixed1;
    constructor() {
        fieldFixed1.dataSize = 64;
        fieldFixed1.member1 = 2;
    }
    function SemanticallyEquivalent() public returns(uint256) {
        fieldFixed1.dataSize = 0;
        fieldFixed1.member1 = 1;
        return fieldFixed1.dataSize;
    }
}

contract EliminedNestedSize {
    struct ItemStruct {
        uint member1;
    }
    struct Struct1 {
        uint256 member1;
    }
    constructor() {}
}

contract EliminedNestedFixedSizes {
    uint fieldFixed1 = 64;
    constructor() {}
}

contract NestedCalldataArrayTest {
    uint256 fieldFixed1 = 128;
    constructor() {}
    function Test() public {
        FixedDynamicList();
        FixedDynamicNonFixedSizesArray();
        SemanticallyEquivalent();
        EliminedNestedSize();
        EliminedNestedFixedSizes();
    }
}
