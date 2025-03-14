pragma solidity ^0.8.0;
contract C {
  uint public x = 0xa;
  constructor() public {
    x = 2 ** 32;
  }
  fallback() external payable {
  }
}
