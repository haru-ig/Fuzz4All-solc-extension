pragma solidity ^0.8.0;

contract MutatedContract {
  uint constant X = 45;
  uint x;
  constructor() public{
    x = X;
  }
  function _calculate() public pure returns (uint) {
    return x + _modify();
  }
  function _modify() public {
    x = X;
  }
}
