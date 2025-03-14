pragma solidity ^0.8.0;
contract SemanticallyEquivalent18 {
  uint constant constantValue = 3;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    uint(1);
    _h = constantValue;
    uint(1);
  }
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    uint(1);
    uint(1);
    uint(1);
    _h = constantValue;
    uint(1);
