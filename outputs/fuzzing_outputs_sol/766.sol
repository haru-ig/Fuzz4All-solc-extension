pragma solidity ^0.8.0;
library ModificationExample {
  uint256 public static i;

  function modify() public pure {
    if (i < 100) {
      i += 1;
    }
  }
}
contract FallbackModificationExample {
  function modify() public view {
    uint256 i;
    for (i = 50; i < 100; i++) {
      i += 1;
    }
  }
}
contract Caller {
  function callMe() public view {
    address addr = msg.sender;
    (bool success, ) = addr.call{value: 1 ether}("");
    require(success, "Caller fail");
  }
}
