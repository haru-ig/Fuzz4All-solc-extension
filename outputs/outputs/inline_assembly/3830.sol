pragma solidity ^0.8.0;
contract SemanticallyEquivalent11 {
  uint constant constantValue = 1000;
  constructor() {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    _c = constantValue;
  }

  function x() pure public returns (uint) {
    uint _h = constantValue;
    uint _c = constantValue;
    return uint(_c);
  }
}
