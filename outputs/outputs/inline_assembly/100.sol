pragma solidity ^0.8.0;
interface I {
  uint8 public _number;
  uint8 public _limit;
  uint8 public _remainder;
  address public _address;
  function incrementNumber() public;
  function decrementNumber() public;
}
contract G {
  uint8 public _number;
  uint8 public _limit;
  uint8 public _remainder;
  address public _address;
  constructor() {
    _limit = 0;
    _number = 0;
    _address = msg.sender;
  }
  function incrementNumber() public {
    _address = block.coinbase;
    _limit++;
    _number = _number + 1;
  }
  function decrementNumber() public {
    uint8 limit = _limit;
    for(uint8 i = 0; i < limit; i++) {
      _address = address(1);
      _number = _number - 1;
    }
  }
  function checkRemaining() public view returns (uint8) {
    return _remainder;
  }
  function isFinished() public view returns (bool) {
    return _limit == 0;
  }
}
contract F is I, G {
  uint8 public _number;
  uint8 public _limit;
  uint8 public _remainder;
  address public _address;
  constructor() {
    _limit = 0;
    _number = 0;
    _address = msg.sender;
  }
  function incrementNumber() public {
    _address =
