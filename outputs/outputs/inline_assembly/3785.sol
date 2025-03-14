pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    uint256 _h = (uint256(
      (
        constantValue
      )
    ));
    return _h;
  }
}
contract SemanticallyEquivalent9 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h) {
    uint256 _h = (uint256(
      (
        constantValue
      )
    ));
    return _h;
  }
}
contract SemanticallyEquivalent10 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue =
