pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContract2 {
  constructor() public {}
  uint constant a = 45;
  uint constant X = 45;
  uint x;
  function _calculate() public pure returns (uint) {
    return X + a + a;
  }
  function _modify() public {
    x = X + a + X + X;
  }
}
