pragma solidity ^0.8.0;
contract AlternativeFallbackModificationExample is FallbackModificationExample {
  uint256 internal constant MAX = 20;
  function modify() public view {
    uint i = 0;
    uint256 j;
    while (i < 100) {
      i += 1;
      if (i < MAX) {
        uint256 l = j;
        j = l;
      }
    }
  }
}
