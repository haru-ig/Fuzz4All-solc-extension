pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {
    _number = 3;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract B is A {
  constructor() {


  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
