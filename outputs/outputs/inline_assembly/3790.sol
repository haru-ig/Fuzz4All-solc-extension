pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256) {
    uint256 _h = uint256(
      (
        constantValue
      )
    );
    return _h;
  }
}
contract SemanticallyEquivalent8 {
  constructor () {
    uint h = uint(
      constantValue
  );
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint) {
    uint256 h;
    h = uint256(
      (
        constantValue
      )
    );
    return uint(
      (
        h
      )
    );
  }
}
 contract AnotherSemanticsEquivalent
{
    string constant CONSTANT_VALUE = "AnotherConstant";

    uint constant constantValue = 10
