pragma solidity ^0.8.0;
contract Mutator2 {
  uint256 private _last;
  uint256 _last2;
  uint256[2] private _lastArray;
  constructor () {
    _last = 0;
    _last2 = 0;
    _lastArray = new uint256[](2);
    _lastArray[0] = 0;
    _lastArray[1] = 1;
  }
  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return _lastArray[0] * _last2 + _lastArray[1] - _last;
  }
  function append(uint256 _left) public { _last = (_last * 61) % 72147215;}
  function append2(uint256 _left) public { _last2 = (_last2 * 10) % 10;}
  function appendArray(uint256 _left) public { _lastArray[0] = (_lastArray[0] + _left) % 10; _lastArray[1] = (_lastArray[1] + _left) % 10;}
  function appendAll() public {_last = (_last + _last2) % 72147215;}
  function multiplyAll() public {_last = (_last + _last2) * 24; _last2 = 0;}
  function appendMultiplyAll() public {_last = (_last * 5 + _last2) * 25; _last2 = 0;}
}
