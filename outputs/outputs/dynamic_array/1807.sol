pragma solidity ^0.8.0;
contract DynamicNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
        uint member2;
    }
    ItemStruct[] public fieldDynamic1;
    ItemStruct internal _fieldDynamic2;
    constructor() {
        fieldDynamic1.length = 1;
        fieldDynamic1[0].member1 = 0;
        fieldDynamic1[0].member1 = 0;
        _fieldDynamic2.member1 = 0;
        _fieldDynamic2.member2 = 0;
    }
    function DynamicList() public returns(uint256) {
        fieldDynamic1.length = 0;
        _fieldDynamic2.member2 = 2;
        return _fieldDynamic2.member1;
    }
}
contract DynamicStaticSizesArray {
    uint public fieldDynamic1;
    uint public fieldDynamic2;
    constructor(uint a_fieldDynamic1, uint a_fieldDynamic2) public {
        fieldDynamic1 = a_fieldDynamic1;
        fieldDynamic2 = a_fieldDynamic2;
    }
    function DynamicList() public returns(uint256) {
        fieldDynamic1 = 1;
        fieldDynamic2 = 2;
        return fieldDynamic1;
    }
}
