pragma solidity ^0.8.0;
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1600;
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
    assembly {
      _c := constantValue
      _p := constantValue
      _q := constantValue
    }
    uint _r;
    assembly { _r := constantValue }
    uint _s;
    assembly { _s := constantValue }
    uint _t;
    assembly { _t := constantValue }
    uint _u;
    assembly { _u := constantValue }
    asm.value(10, _q);
    uint _v;
    assembly { _v := constantValue }
    uint _w;
    assembly { _w := constantValue }
    uint _x;
    assembly { _x := constantValue }
    uint _y;
    assembly { _y := constantValue }
    uint _z;
    assembly { _z := constantValue }
    _h = constantValue;
    _x = constantValue;
    _y = constantValue;
    _z = constantValue;
    _c = constantValue;
    _p = constantValue;
    _q = constantValue;
  }
  function x() pure public returns (bool) {
    return uint(_q) >= uint(3000) && uint(_q) <= uint(5000)
   && uint(_c) >= uint(2900) && uint(_c) <= uint(5000)
   && uint(_p) >= uint(2850) && uint(_p) <= uint(5000)
   && uint(_w) >= uint(2750) && uint(_w) <= uint(5000)
   && uint(_t) >= uint(2650) && uint(_t) <= uint(50
