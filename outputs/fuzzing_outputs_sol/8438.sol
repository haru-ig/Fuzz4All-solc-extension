pragma solidity ^0.8.0;
contract FallbackMutatorExample {
  int x;
  constructor() public {
    x += 2;
  }
  payable receive() {
  }
}
