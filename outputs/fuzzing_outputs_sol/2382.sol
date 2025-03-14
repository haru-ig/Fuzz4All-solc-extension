pragma solidity ^0.8.0;
contract CallerWithFallback {
  uint i;
  receive () external {
    i += 1;
  }
  fallback() public returns(uint) {
    return i;
  }
}
