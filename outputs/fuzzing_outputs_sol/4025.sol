pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 constant public value = 3;
  function myFallback() public payable {}
  receive() payable {}
}
