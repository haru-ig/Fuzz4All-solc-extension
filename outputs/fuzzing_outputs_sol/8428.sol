pragma solidity ^0.8.0;
contract FallbackMutatorExample {
  uint x;
  constructor() public {
    x += 1;
  }
  receive() external payable {
  }
}
