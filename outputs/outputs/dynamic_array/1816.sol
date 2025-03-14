pragma solidity ^0.8.0;
contract SemanticallyEquivDynamicNonFixedSizesArrayWithNew {
    struct ItemStruct {
        uint member1;
        uint256 member2;
    }
    ItemStruct public fieldSemantic1;
    constructor() {
        fieldSemantic1_member1 = 0;
        fieldSemantic1_member2 = 0;
  }
  ItemStruct public fieldSemantic1_member1;
  uint256 public fieldSemantic1_member2;
  function SemanticallyEquivDynamicList() public returns(uint) {
    fieldSemantic1_member1 = 2;
    fieldSemantic1_member2 = 44;
    return fieldSemantic1_member2;
  }
}
