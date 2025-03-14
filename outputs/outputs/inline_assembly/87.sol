pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {



    _number = _number - 1;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0xA;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract D {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {



    _number = _number - 128;
  }
}
