pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  constructor () {
    _initialValue = 10;
  }
  function devide(uint256 _left, uint256 _right) public view returns(uint256){
    require(_right > 0);
    return _left / _right;
  }
  function calculate() public view returns(uint256){
    return multiply(_initialValue, 3);
  }
}
pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  constructor () {
    _initialValue = 8;
  }
  function devide(uint256 _left, uint256 _right) public view returns(uint256){
    require(_left > 0);
    return _left / _right + 5;
  }
  function calculate() public view returns(uint256){
    uint256 a = multiply(50, 10);
    return multiply(a, _initialValue);
  }
}
