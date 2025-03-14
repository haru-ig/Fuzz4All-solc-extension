pragma solidity ^0.8.0;
contract Mutation {
  uint256 public _initialValue;
  constructor () {
    _initialValue = 10;
  }
  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return _left * _right;
  }
  function add(uint256 _left, uint256 _right) public view returns(uint256){
    return _left + _right;
  }
  function initialize(uint256 newValue) public{
    _initialValue = newValue;
  }
  function modify (uint256 newValue) public {
    _initialValue = newValue;
  }
}
