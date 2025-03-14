pragma solidity ^0.8.0;
contract FallbackModificationExample {
  uint constant public TOTAL_NUM_ELEMENTS = 100;
  function modify() public view {
    uint256 i;
    uint _iSizeof;
    uint _i;
    for (i = 0; i < TOTAL_NUM_ELEMENTS; ++i) {
      _iSizeof = i;
      _i -= 1;
    }
  }
}
