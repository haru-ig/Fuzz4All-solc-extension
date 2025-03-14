pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  mapping(uint8 => uint256) private _state;
  function () external payable {
    uint256 _left = msg.value;
    emit StateUpdated(_left);
  }
  constructor () {
    _initialValue = 10;
    _state[0xFF] = 10;
  }
  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return _left * _right * _initialValue / 10 + _state[0xFF];
  }
  function setState(uint8 _idx, uint256 _value) public { _state[_idx] = _value; }
  event StateUpdated(uint256 _value);
}
