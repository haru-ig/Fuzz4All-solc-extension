pragma solidity ^0.8.0;
contract Example22 {
  uint256 public value;
  fallback() external {
    value = 0;
  }
}
