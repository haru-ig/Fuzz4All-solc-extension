pragma solidity ^0.8.0;
contract Mutation {

  uint256 private _initialValue;

  constructor () {
    _initialValue = 10;
  }

  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return _left * _right;
  }

  function add(uint256 _left, uint256 _right) public view returns(uint256){
    return _left + _right;
  }
}
