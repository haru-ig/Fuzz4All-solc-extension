pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 public value;
  function myReceive(address sender, uint256 value, bytes calldata) public payable {
    value = 0;
  }
}
