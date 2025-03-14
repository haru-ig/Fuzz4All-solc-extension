pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract {
  uint constant X = 45;
  uint x;
  constructor() public{
    x = X;
  }
  function _calculate() public pure returns (uint) {
    return x / X;
  }
  function _modify() public {
    x = 100;
  }
}
