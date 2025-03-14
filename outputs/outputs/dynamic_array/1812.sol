pragma solidity ^0.8.0;
contract FixedDynamicNonFixedSizesArray {
    struct ItemStruct {
        uint member1;
        uint256 member2;
    }
    ItemStruct public fieldA;
    ItemStruct public fieldB;

    constructor() {
        fieldA.member2 = 2;
        fieldB.member2 = 2;
    }

    function FixedDynamicList() public returns(uint256) {
        return fieldA.member1;
    }
    function FixedDynamicListCopy() public returns(uint) {
        return fieldA.member1;
    }
    function FixedDynamicListRef() public returns(uint) {
        return address(fieldA);
    }
    function FixedDynamicListRef2() public returns(uint256) {
        return fieldB.member1 + fieldA.member1;
    }
    function FixedDynamicNonCopyList() public returns(uint256) {
        return fieldA.member2 - fieldB.member2;
    }
}

contract DynamicArrayNonCopy {
    uint256[] private fixedArray;
    constructor() {
        fixedArray[0] = 7;
    }

    function Read() public returns(uint) {
        return fixedArray[0];
    }

    function Write(uint256 value) public {
        fixedArray[0] = value;
    }
}
contract ArrayCopy {
    uint256[] public staticArray = new uint256[](3);
    constructor() {
        staticArray[1] = 7;
    }

    function Read() public returns(uint) {
        return staticArray[1];
    }


    function Write() public {
        uint256[] storage s = staticArray;
        s[s.length] = 7;
    }

    function copyIn() public returns(uint) {
        uint256[] memory s = staticArray;
        return s[s.length];
    }
}
contract ArrayCopyDynamic {
    uint256 [] public staticArray = new uint256[](4);
    constructor() {
        staticArray[2] = 7;
    }

    function Read() public returns(uint) {
        return staticArray[2];
    }

    function Write(uint256 value) public {
        uint256[] storage s = staticArray;
        s
