pragma solidity ^0.8.0;
contract SemanticallyEquivalent16 {
  enum State1 { F }
  modifier fModifier(uint x) {
    if (x == 1)
      assembly { _return(0, 100) }
      F;
    else
      F;
  }
  uint constant constantValue = 100;
  constructor () {
    uint _c;
    uint _h;
    uint _p;
    uint _q;
    assembly {
      _c := constantValue
      _h := constantValue
      _p := constantValue
      _q := constantValue
    }
    fModifier(uint(1));
    _c = constantValue + uint(1);
    uint(2);
    fModifier(uint(1));
    _c = constantValue + uint(1);
    _c = constantValue;
    _c += _c;
    fModifier(uint(1));
    fModifier(uint
