pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h) {
    h = uint256(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent9 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    h = uint256(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent10 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (
