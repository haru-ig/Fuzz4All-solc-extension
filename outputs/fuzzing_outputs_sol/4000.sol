pragma solidity ^0.8.0;
contract Example25 {
  uint256 public value;
  address public sender;
  fallback() external payable {
    value = 0;
    sender = msg.sender;
  }
}
