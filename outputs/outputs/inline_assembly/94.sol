pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {
    _number = 0x12345678;
  }
  function decrementNumber() public {
    _number = 0 - _number;
  }
}
