pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
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
contract SemanticallyEquivalent1 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint) {
    uint256 _h = uint(
      (
        constantValue
      )
    );
    return _h;
  }
}
contract SemanticallyEquivalent2 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public
