pragma solidity ^0.8.0;
contract LowLevelCaller {
  uint256 constant public value = 43;
  function myReceive(address sender, uint256 value) public payable { }
}
