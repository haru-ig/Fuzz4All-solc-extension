pragma solidity ^0.8.0;
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _h = constantValue;
    _c = constantValue;
    _p = constantValue;
    _q = constantValue;
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
    uint _r;
    assembly { _r := constantValue }
    _q = constantValue;
    _p = constantValue;
    _c = constantValue;
    _r = constantValue;
    _h = constantValue;
    return uint(_q);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent16 {
  uint constant constantValue = 1000;
  constructor () {
    asm {
      constantValue := constantValue + 1000
    }
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint _p;
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    uint _r;
    assembly { _r := constantValue }
    _q = constantValue;
    _p = constantValue;
    _c = constantValue;
    _r = constantValue;
    _h = constantValue;
  }
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    uint
