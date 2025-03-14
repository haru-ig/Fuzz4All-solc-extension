pragma solidity ^0.8.0;
contract FallbackModificationExample {
  receive() public pure {}
  function modify() public view {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
}
