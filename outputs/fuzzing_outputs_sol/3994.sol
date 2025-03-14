pragma solidity ^0.8.0;
contract Example23 {
  uint256 public value;
  receive() external payable {
    value = 0;
  }
}
