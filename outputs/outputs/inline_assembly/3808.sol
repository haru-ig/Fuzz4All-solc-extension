pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h = constantValue;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return uint(_h);
  }
}
