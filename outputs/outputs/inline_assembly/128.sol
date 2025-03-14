pragma solidity ^0.8.0;
contract E {
  uint8 _number;
  constructor(uint8 num) {
    _number = num;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
}
contract G {
  uint8 _number;
  constructor(uint8 num) {
    _number = num;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract K {
  uint8 _number;
  constructor(uint8 num) {
    _number = num;
  }
  function add(uint8 x, uint8 y) public {

  }
  function subtractAndMultiply(uint8 x, uint8 y) public {

  }
}
