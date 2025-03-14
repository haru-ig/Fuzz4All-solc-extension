pragma solidity ^0.8.0;
contract Example2 {
  uint256 public version;
  constructor(uint256 version_) {
    value = _version;
  }
  receive() external {
    version = 0;
    value = _version;
  }
}
