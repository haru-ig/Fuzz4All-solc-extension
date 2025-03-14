pragma solidity ^0.8.0;
contract MutantFallback3 {
  uint256 public immutable i;
  constructor() {
    i = 1;
  }

  function myFallback() public returns (uint256) {
    return i;
  }
}
