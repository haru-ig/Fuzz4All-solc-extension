pragma solidity ^0.8.0;
contract MutatedCaller {
  struct CallData { uint256 balance; uint256 value; }
  uint256 public value;
  mapping(address => CallData) public callData;
  function myReceive(address sender, uint256 value) public {
    value = 0;
    callData.at(sender).balance = 0;
    callData.at(sender).value = 0;
  }
}
