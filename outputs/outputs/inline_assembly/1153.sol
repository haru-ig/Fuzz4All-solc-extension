pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyPure() public {
    x = '5aa3fe';
  }
}
contract MutatedRevertCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyRevert() public { revert(); }
}
