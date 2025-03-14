pragma solidity ^0.8.0;
contract Example23{
  uint256 public value;
  fallback() external payable {
    value = 0;
  }
}
