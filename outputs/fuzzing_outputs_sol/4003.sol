pragma solidity ^0.8.0;
contract Caller {
  uint256 public value;
  function myFallbackFunction() public payable {
    value = 0;
  }
}
