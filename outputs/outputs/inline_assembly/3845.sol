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
    binary_i32(80);
    binary_i32(160);
    uint _z;
    assembly { _z := constantValue }
    _c = constantValue;
    uint(1);
    uint(1);
    _h = constantValue;
    uint(1);
    uint(_h);
    _h = constantValue;
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(_h);
    uint(1);
    uint(1);
    uint(1);
    uint(_c);
    uint(_h);
    uint
