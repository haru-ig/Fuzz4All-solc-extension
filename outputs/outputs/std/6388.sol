pragma solidity ^0.8.0;
contract ArrayMutator {
  uint256 public constant initialValue = 10;
  uint256 public constant multiplier = 10;

  uint256 public constant length = 5;
  uint256[5] private numbers;
  constructor() {
    for (uint256 i = 0; i < length; i++){
      numbers[i] = initialValue + i * multiplier;
    }
  }
  function getLength() public view returns (uint256){
    return length;
  }
  function getValue() public view returns (uint256){
    for (uint256 i = 0; i < length; i++){
      return numbers[i];
    }
  }
  function add(uint256 _index, uint256 _number) public view returns(uint256){
    uint256 first = numbers[_index];
    uint256 second = numbers[_index];
    second = second + _number;
    first = first + _number;
    return multipliers[first] * multiplier * multiplier + second;
  }
  function subtract(uint256 _index, uint256 _number) public view returns (uint256){
    uint256 first = numbers[_index];
    uint256 second = numbers[_index] - _number;
    first = first - second;
    second = first - second;
    return multipliers[second] * multiplier + first;
  }
  function multiply(uint256 _index, uint256 _number) public view returns (uint256){
    uint256 first = numbers[_index];
    uint256 second = numbers[_index] * _number;
    second = second * multiplier;
    first = first * multiplier;
    return multipliers[first] + second;
  }
  function compare(uint256 _index, uint256 _left, uint256 _right) public view returns(uint256){
    uint256 first = numbers[_index];
    uint256 second = numbers[_index] - _left + _right;
    return first * _number;
  }
  function getIndex() public view returns (uint256){
    uint256 len = length;
    for (uint256 i=1
