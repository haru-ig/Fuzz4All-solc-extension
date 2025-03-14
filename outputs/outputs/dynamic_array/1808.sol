pragma solidity ^0.8.0;
contract FixedDynamicNonFixedSizesArray {
    struct ItemStruct {
        uint public member1;
        uint256 public member2;
    }
    ItemStruct public fieldFixed1;
    constructor() {
        fieldFixed1.member1 = 0;
        fieldFixed1.member2 = 0;
    }
    function FixedDynamicList() public returns(uint256) {
        fieldFixed1.member2 = 2;
        return fieldFixed1.member1;
    }
}
