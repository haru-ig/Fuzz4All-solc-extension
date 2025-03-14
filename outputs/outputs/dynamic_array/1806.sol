pragma solidity ^0.8.0;
contract DefaultFixedDynamicNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
        uint256 member2;
    }
    ItemStruct public fieldDefault1;
    constructor() public {
        fieldDefault1.member1 = 0;
        fieldDefault1.member2 = 0;
    }
    function DefaultFixedDynamicList() public returns(uint256) {
        fieldDefault1.member2 = 2;
        return fieldDefault1.member1;
    }
}


pragma solidity ^0.8.0;
contract DefaultDynamicFixedNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
        uint member2;
    }
    ItemStruct public fieldDynamicNonEmpty1;
    ItemStruct public fieldFixedEmpty1;
    ItemStruct public fieldFixed2;
    uint constant defaultSize1 = 8;
    constructor() public {
        fieldDynamicNonEmpty1.member1 = 0;
        fieldDynamicNonEmpty1.member2 = 0;
        fieldFixedEmpty1.member1 = 0;
        fieldFixedEmpty1.member2 = 0;
        fieldFixed2.member2 = 2;
    }
    function DefaultDynamicNonEmptyFixedList() public returns(uint256) {
        ItemStruct memory defaultEmpty;
        defaultEmpty.member1 = defaultSize1;
        defaultEmpty.member2 = 2;
        fieldDynamicNonEmpty1.member1 = defaultSize1;
        fieldDynamicNonEmpty1.member2 = defaultSize1;
        fieldFixedEmpty1.member1 = defaultEmpty.member1;
        fieldFixedEmpty1.member2 = defaultEmpty.member2;
        fieldFixed2.member1 = 2;
        fieldFixed2.member2 = defaultEmpty.member1;
        return fieldDynamicNonEmpty1.member2*2 + fieldFixedEmpty1.member2 + fieldFixed2.member2;
    }
    function DefaultFixedDynamicList() public returns(uint256) {
        fieldDynamicNonEmpty1.member1 += defaultSize1;
        uint256 emptyValue = 0;
        fieldFixedEmpty1.member2 = 2;
        fieldFixed2.member1 = 1;
        return (fieldFixed2.member2*1+fieldFixedEmpty1.member1
