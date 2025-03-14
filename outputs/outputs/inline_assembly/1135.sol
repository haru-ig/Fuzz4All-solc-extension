pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  uint constant X = 45;
  uint x;
  constructor() public{
    x = X;
  }
  function calculate() public view returns (uint) {
    return X + 1;
  }
  function modify() public {
    x = 100;
  }
}
