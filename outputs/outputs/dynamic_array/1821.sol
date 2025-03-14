pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedDynamicNonFixedSizeArrayWithoutNew {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    uint256 internal constant fieldFixed1 = 0;
    uint256 internal constant fieldFixed2 = 0;
    constructor() {
        fieldFixed1 = 0;
        fieldFixed2 = 0;
    }
    function FixedDynamicListWithoutNew() public returns(uint) {
        return fieldFixed2;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSmartNonSmartNonSmartConstructorFixedDynamicNonFixedSizeList {
    struct ItemStruct {
        uint256 member1;
        uint256 member2;
    }
    ItemStruct internal fieldFixed;
    constructor(uint256 fixedData) public {
        fieldFixed = ItemStruct(fixedData,0);
    }
    function FixedDynamicList(uint256 fixedData) public returns(uint) {
        return fieldFixed.member2;
    }
}
