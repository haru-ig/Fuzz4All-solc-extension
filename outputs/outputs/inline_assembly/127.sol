pragma solidity ^0.8.0;
contract C {
  uint16 _number;
  constructor(uint16 num) {
    _number = num;
  }
  function subtractNumber(uint16 num) public returns (uint16) {
    return _number - num;
  }
}
