pragma solidity ^0.8.0;
contract C {
  constructor() {
    bar();
  }
  fallback() external payable {
    bar();
  }
}
