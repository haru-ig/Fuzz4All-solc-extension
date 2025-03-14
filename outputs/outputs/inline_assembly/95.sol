pragma solidity ^0.8.0;
contract G {
  uint8 public _number;
  constructor() {
    _number += 1;
  }
  function decrementNumber() public {
    _number += 127;
  }
}
