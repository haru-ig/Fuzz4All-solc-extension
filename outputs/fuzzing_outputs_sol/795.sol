pragma solidity ^0.8.0;
contract DifferingPayableFallbackModificationExample {
  function modify() public payable {
    uint256 i;
    for (i = 0; i < 50; i++) {
    }
  }
}
