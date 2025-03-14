pragma solidity ^0.8.0;
contract MutatedCaller{
  uint256 public value;
  function method() public returns(uint256) {
    value += 8;
    return 7;
  }
}
