pragma solidity ^0.8.0;
contract FallbackMutatorFailure {
  uint x = 0;
  constructor() public {
  }
  receive() public {
    x += 1;
  }
  fallback() public receive payable {
    x += 1;
  }
}
