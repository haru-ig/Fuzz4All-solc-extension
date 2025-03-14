pragma solidity ^0.8.0;
contract FallbackModificationExample {
  function modify() public pure {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
  receive() external payable {
    modify();
    selfdestruct(msg.sender);
  }
}
