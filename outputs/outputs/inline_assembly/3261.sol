pragma solidity ^0.8.0;
contract Mutate3 {
  address public _address;
  uint public _contractValue;
  uint _first;
  uint8 _firstChar;
  uint public _second;
  uint8 _secondChar;
  constructor(uint _amount, uint8 _first, uint8 _second) {
    _address = msg.sender;
    _firstChar = _first;
    _secondChar = _second;
    _contractValue = (_amount | (_firstChar << 5));
    _second = _amount | (_secondChar << 7);
    _amount = _amount | (_secondChar << 3);
  }
  function Change() public {
    _first = (_amount & 0b11);
    _second = (_amount & 0b111);
  }
  function Change2() public {
    _first = (_firstChar & 7);
    _second = (_secondChar & 7);
  }
}
