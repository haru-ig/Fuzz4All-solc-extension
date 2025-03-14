pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
    return uint(c);
  }
}
