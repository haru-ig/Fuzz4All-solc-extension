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
    uint _q;
    assembly { _q := constantValue }
    uint _t;
    assembly { _t := constantValue }
    _c = constantValue;
    _h = constantValue;
    _p = constantValue;
    uint(1);
    uint(_p);
    uint(1);
    uint(_h);
    uint(1);
    uint(_t);
    _h = _h;
    _c = _c;
    _p = _p;
    _q = _q;
    _t = _t;
    uint(1);
    return uint(_h);
  }
  function x() pure public returns (uint) {
