pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  constructor () {
    _initialValue = 10;
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256){
    return (_left + _initialValue) / _right;
  }
}
