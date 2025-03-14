pragma solidity ^0.8.0;
contract FallbackModificationExample {
  function modify() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
}
