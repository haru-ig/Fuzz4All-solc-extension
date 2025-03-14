pragma solidity ^0.8.0;
contract C {
  uint public x = 0xa;
  fallback() external {
    x = x * 2;
  }
}
