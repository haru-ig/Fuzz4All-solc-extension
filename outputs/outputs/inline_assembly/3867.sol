pragma solidity ^0.8.0;
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  function () {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    _h = constantValue;
    uint(1);
    _h = constantValue;
    uint(1);
    _h = constantValue;
    uint(1);
    _h = constantValue;
    _h = constantValue;
    _h = constantValue;
    _h = constantValue;
    _h = constantValue;
    uint(1);
    _h = constantValue;
    uint(1);
    _h = constantValue;
    uint(1);
    uint(1);
    uint(1);
    uint(1);
    uint(1
