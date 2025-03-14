pragma solidity ^0.8.0;
contract AddMutator is Mutator {
  uint256 public constant MIN_MUTATOR_VALUE = 100;
  uint256 public constant INITIAL_MUTATOR_VALUE = 1000;

  function add(uint256 _left, uint256 _right) public view returns(uint256) {
    uint256 value1 = _left;
    uint256 value2 = _right;
    value1 = value1 + initialValue;
    value2 = value2 + initialValue;
    return value1;
  }
  function addMin(uint256 _left, uint256 _right) public view returns(uint256) {
    uint256 value1 = _left;
    uint256 value2 = _right;
    uint256 min = (value1 >= value2)? value2 : value1;
    value1 = min + initialValue;
    value2 = (value1 >= value2)? value2 : value1;
    return value1;
  }
}
