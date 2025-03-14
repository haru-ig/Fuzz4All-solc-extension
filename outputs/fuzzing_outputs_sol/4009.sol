pragma solidity ^0.8.0;
contract Caller {
  uint256 public value;
  function myReceive(address sender, uint256 value) public {
    value = 0;
  }
}
