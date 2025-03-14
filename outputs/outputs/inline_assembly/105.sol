pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract F {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
  function checkRemaining() public view returns (uint8) {
    return _number;
  }
}
contract A {
  uint8 public _number;
  function A() public {
    _number = 0;
  }
}
contract B is A {
  uint8 public _number;
  constructor() public {
    _number = 0;
  }
  function B() public {
    _number = 0;
  }
  function checkRemaining() public view returns (uint8) {
    return _number;
  }
}
contract C {
  uint8 public _number;
  constructor() public {
    _number = 0;
  }
  function C() public {
    _number = 0;
  }
  function checkRemaining() public view returns (uint8) {
    return _number;
  }
}
contract D is A, B, C {
  uint8 public _number;
  constructor() public {
    _number = 0;
  }
  function D() public {
    _number = 0;
  }
  function checkRemaining() public view returns (uint8) {
    return _number;
  }
}
