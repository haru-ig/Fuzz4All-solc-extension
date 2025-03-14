pragma solidity ^0.8.0;
contract Mutator {
  Mutator private mutator;
  uint public constant initialValue = 10;
  constructor (Mutator _mutator) {
    mutator = _mutator;
  }
  function setAddress(uint256 _index, address _address) public {
    settableAddresses[_index] = _address;
  }

  function multiply(uint256 _left, uint256 _right) public view returns(uint256){
    return (_left * _right) - initialValue;
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256){
    uint256 quotient = mutator.divide(_left, _right);
    uint256 remainder = mutator.divide(_left, quotient);
    return quotient + remainder;
  }
}
