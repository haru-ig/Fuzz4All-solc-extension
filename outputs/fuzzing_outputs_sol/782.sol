pragma solidity ^0.8.0;
contract FallbackModificationExample {
  function modify() public view {
    uint8 _datastorage = uint8(-1);
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
}
