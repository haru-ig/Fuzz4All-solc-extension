pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 _h) {
    uint256 _h = uint(
      (
        constantValue
      )
    );
    return _h;
  }
}
contract SemanticallyEquivalent8 {
  constructor () {
    uint constant _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint constant h) {
    h = uint(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent9 {
  constructor () {
    uint constant _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h) {
