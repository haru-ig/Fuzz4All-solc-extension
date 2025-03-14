pragma solidity ^0.8.0;
contract G {
  uint8 public _number;
  uint[3] private numbers;
  constructor() {
    uint _bytesize = 100;
    uint16 _max_number = 2 ** 16 - 1;
    for (uint i = 0; i < _bytesize; i++) {
      uint result = _max_number / 2 ** 8;
      uint rand = uint(keccak256(uint8(keccak256(blockhash(block.timestamp))))) % 2 ^ gas;
      if (rand == 1) {
        _number = _number + 1;
      } else {
        _number = _number - 1;
      }
    }
    numbers[0] = _number;
    _number = 0;
  }
  function incrementNumber() public {

    numbers[0] = _number + 1;
  }
  function decrementNumber() public {
    numbers[0] = _number - 1;
  }
}
