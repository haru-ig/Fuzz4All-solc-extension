pragma solidity ^0.8.0;
contract SemanticallyEquivalent10 {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    _h = 2000;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return uint(_h);
  }
}
