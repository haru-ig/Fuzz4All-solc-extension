pragma solidity ^0.8.0;
contract E {
  uint8 _number;
  constructor(uint8 num) {
    _number = num;
  }
  function incrementNumber(uint8 num) public {
    _number = _number + num;
  }
}
contract G {
  uint8 _number;
  constructor(uint8 num) {
    _number = num;
  }
  function decrementNumber(uint8 num) public {
    _number = _number - num;
  }
}
