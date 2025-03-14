pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedClass {
  bytes32 constant X = '1001910';

  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }

  function _calculate() public pure returns (bytes32) {
    return X;
  }

  function _modify() public returns (bool) {
    x = '5aa3fe';
    return true;
  }
}
