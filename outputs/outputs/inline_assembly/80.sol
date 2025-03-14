pragma solidity ^0.8.0;
contract C2 {
  uint8 public _number;
  uint8 public _x;
  constructor() {
    _number = 0x2;
    _x = 0x4;
  }
  function _incrementNumber() public {
    _number += 1;
    _x += 1;
  }
}
contract D2 {
  uint8 public _number;
  bool public _x;
  constructor() {
    _number = 0x1;
    _x = true;
  }
  function _incrementNumber() public {
    _number += 1;
    _x += 1;
  }
}


pragma solidity ^0.8.0;
contract A {
  uint256 private _number;
  constructor() {
    _number = 261853425225131;
  }
  function _incrementNumberA() public {
    _number += 1;
  }
}
contract C {
  uint256 public _number;
  constructor() {
    _number = 838166716178974;
  }
  function _incrementNumberB() public {
    _number += 1;
  }
}
contract D {
  uint256 public _number;
  constructor() {
    _number = 479083889825104;
  }
  function _incrementNumberC() public {
    _number += 1;
  }
}
contract E {
  uint256 public _number;
  constructor() {
    _number = 0;
  }
  function _incrementNumber() public {
    _number += 1;
  }
}


pragma solidity ^0.8.0;
contract C3 {
  uint256 public _number;
  uint256 public _x;
  constructor() {
    _number = 261853425225131;
