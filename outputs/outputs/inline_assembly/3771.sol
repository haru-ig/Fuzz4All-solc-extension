pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  uint256 constant constantValue = 1000;
  uint256 constant x = constantValue;
  constructor () {}
  function x() view public returns (uint256) {
    return uint256(-constantValue);
  }
}
