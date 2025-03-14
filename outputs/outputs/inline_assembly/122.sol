pragma solidity ^0.8.0;
contract G {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 1;
    uint8 memory _number2 = _number;
    _number2 = 200;
  }
}
