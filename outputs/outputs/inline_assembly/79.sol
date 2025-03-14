pragma solidity ^0.8.0;
contract A {
  uint8 private _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberA() public {
    _number += 1;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberB() public {
    _number += 1;
  }
}
contract D {
  uint8 public _number;
  constructor() {
    _number = 0xA;
  }
  function _incrementNumberC() public {
    _number += 1;
  }
}
