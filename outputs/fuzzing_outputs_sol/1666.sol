pragma solidity ^0.8.0;
contract C {
  uint x = 0xa;
  constructor() public {
  }
  fallback() external {
    x = 2 ** 16;
  }
}
