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
    _c = constantValue;
    _h = constantValue;
    _p = constantValue;
    uint(1);
    uint(1);
    _p = constantValue;
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(_h);
    uint(1);
    uint(_c);
    uint(1);
    uint(1);
    uint(_c);
    _c = constantValue;
    uint(_c);
    uint(_c);
    uint(1);
    _c =
