pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
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


contract SemanticallyEquivalent1 {
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
contract SemanticallyEquivalent2 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256) {
    uint256 _h = uint(
      (
        constantValue
      )
    );
    return _h;
  }
}
contract SemanticallyEquivalent3 {
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
contract SemanticallyEquivalent4 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint h) {
    h = uint(
      (
        constantValue
      )
    );
    return h;
  }
}
contract SemanticallyEquivalent5 {
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
