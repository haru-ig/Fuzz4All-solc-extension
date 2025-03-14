pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
}
contract G {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
