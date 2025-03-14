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
  function _modifyPure(bytes32 _z) public {
    x = _z;
  }
  function _modifyRevert(
    bytes32 _z,
    uint _p,
    bytes32 _c,
    bytes32 _v
  ) public { revert(_z); }
}
