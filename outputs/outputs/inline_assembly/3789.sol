pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    h = uint(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent3c {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    h = uint(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent4c {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h)
