pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  uint8 public _limit;
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
    while (true) {
      _address = block.coinbase;
      _number = _number - 1;
      if (block.number > _limit) {
        limit--;
      }
      if (limit == 0) break;
    }
  }
  function checkRemaining() public view returns (uint8) {
    return _remainder;
  }
  function isFinished() public view returns (bool) {
    return _limit == 0;
  }
}
