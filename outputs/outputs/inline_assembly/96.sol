pragma solidity ^0.8.0;


contract A {
  uint8 public _number;
  constructor() {
    _number = 0x1F;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
