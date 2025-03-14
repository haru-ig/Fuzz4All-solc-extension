pragma solidity ^0.8.0;
contract A {
  uint8 private _number;
  constructor() {
    _number = 0A;
  }
  function _incrementNumber() public pure returns (uint) {
    uint x = _incrementNumberA();
    _number += A();
    uint y = _incrementNumberB();
    _number += D();
    uint32 m = _incrementNumberC();
    uint32 o = m + x + y;
    return o;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0C;
  }
  function _incrementNumber() public pure returns (uint) {
    uint x = _incrementNumberA();
    _number += C();
    uint y = _incrementNumberB();
    _number += A();
    uint32 m = _incrementNumberC();
    uint32 o = m + x + y;
    return o;
  }
}
