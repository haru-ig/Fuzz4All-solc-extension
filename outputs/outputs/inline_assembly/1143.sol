pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedFunction {
  uint constant X = 45;
  uint x;
  function modify() public{
    x = X;
  }
  function _calculate() public pure returns (uint) {
    return X + 1;
  }
}
