pragma solidity ^0.8.0;
contract ModificationExample {
  function modify() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }
}
contract FallbackModificationExample {
  function modify() public {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }
}
contract ModificationExample {
  function modify() public {
    uint256 i;
    for (i = 0; i < 100; i++) {
      unchecked {
        i += 1;
      }
    }
  }
}
