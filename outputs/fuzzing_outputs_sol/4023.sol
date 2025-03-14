pragma solidity ^0.8.0;
contract MutantCaller2 {
  uint256 constant public value = 3;
  function myReceive(address receiver, uint256 value) public payable { }
}
