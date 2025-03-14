pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h = constantValue;
  }
  function x() pure public returns (uint256) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return _h;
  }
}
