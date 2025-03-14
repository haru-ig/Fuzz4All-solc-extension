pragma solidity ^0.8.0;
contract SemanticallyEquivalent16 {
  uint constant constantValue = 1000;

  constructor () {
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    return uint(1);
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
    uint((_p));
    uint(_h);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint
