pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  uint constant constantValue = 1000;
  constructor () {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    constantValue = 500;
    assert(_h == constantValue);
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return uint(_h);
  }
}
