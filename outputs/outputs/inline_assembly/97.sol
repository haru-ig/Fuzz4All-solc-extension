pragma solidity ^0.8.0;
contruct C {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    assembly
    {
      let x := sub(s128(0), 3)
      mstore(0, x)
    }
    _number = _number - 1;
  }
}
contract D {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    assembly
    {
      let x := and(0xFF, 0xFF)
      mstore(0, x)
    }
    _number = _number - 1;
  }
}
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract F {
  uint8 public _number;
  uint8 _f;
  constructor() {
    _number = 0;
    _f = 5;
  }
  function decrementNumber() public {
    _number = _number - _f;
  }
}
