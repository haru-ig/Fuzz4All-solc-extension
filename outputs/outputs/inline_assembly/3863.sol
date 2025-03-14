pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h_1;
    assembly { _h_1:= constantValue }
    uint _h_2;
    assembly { _h_2 := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _p_1;
    assembly { _p_1 := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    _h_2 = constantValue;
    uint(1);
    _q = constantValue;
    uint(_h_2);
    _h_2 = constantValue;
    _p_1 = constantValue;
    uint(1);
    _p_1 = constantValue;
    uint(1);
    _p_1 = constantValue;
    _q = constantValue;
    uint(1);
    uint(1);
    uint(_
