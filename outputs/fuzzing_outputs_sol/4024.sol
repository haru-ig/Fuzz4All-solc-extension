pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 constant public value = 3;
  function myReceive(address sender, uint256 value) public returns (uint256) {
    return 1;
  }
}
