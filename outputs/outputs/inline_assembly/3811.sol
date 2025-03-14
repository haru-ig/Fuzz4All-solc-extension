pragma solidity ^0.8.0;
contract SemanticallyEquivalent10 {
  uint constant constantValue = 1000;
  uint256 x2 = constantValue;
  constructor () {
    uint256 _x = x2;
  }
  function y() pure public returns (uint) {
    uint256 constantValue = 1001;
    uint256 _y = constantValue;
    uint256 _z = uint(_y);
    x2 = constantValue + x2;
    return uint(_z);
  }
}
