pragma solidity ^0.8.0;
contract BadCallExample {
  receive() external payable {
  }

  fallback() external payable {
  }
}
