pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 constant public value = 3;
  fallback function myReceive() public payable returns (uint256) {
    return 1;
  }
}
