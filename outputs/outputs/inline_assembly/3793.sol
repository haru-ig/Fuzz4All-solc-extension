pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
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
contract SemanticallyEquivalentX {
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
