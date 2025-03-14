pragma solidity ^0.8.0;
contract MutantCaller {
  bytes32 public value;
  function myReceive(address sender, bytes32 value) public payable {
    value = 0x123456789abcdef;
  }
}
