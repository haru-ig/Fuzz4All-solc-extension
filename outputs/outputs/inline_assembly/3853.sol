pragma solidity ^0.8.0;
contract SemanticallyEquivalent16 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    _c = constantValue;
    uint(1);
    uint(1);
    uint(_c);
    uint(1);
    uint(1);
    _c = constantValue;
    uint(_p);
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    uint(1);
    uint(1);
    uint(1);
    uint(_c);
    uint(1);
    uint(1);
    _c = constantValue;
    uint(_q);
    return uint(_q);
  }
  function x() pure public returns (uint) {
    uint(1);
    uint(_c);
    uint
