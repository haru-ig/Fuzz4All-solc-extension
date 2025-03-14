pragma solidity ^0.8.0;
contract Mutator {
  uint256 public constant initialValue = 10;
  mapping (uint256 => uint256) public settableValues;
  mapping (uint256 => uint256) public multipliers;
  constructor() {
    setNumber(0, initialValue);
    setNumber(2, initialValue);
  }
  function setNumber(uint256 _index, uint256 _number) public {
    settableValues[_index] = _number;
    multipliers[_index] = _number;
  }
  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    uint256 left = settableValues[_left];
    uint256 right = settableValues[_right];
    left = left + initialValue;
    right = right + initialValue;
    return multipliers[left] * right + _left + initialValue;
  }
}
