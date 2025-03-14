pragma solidity ^0.8.0;
contract Mutator {
  uint256 public constant initialValue = 10;
  mapping(uint256 => address) public settableAddresses;
  constructor() {
    setAddress(0, address(0));
  }
  function setAddress(uint256 _index, address _address) public {
    settableAddresses[_index] = _address;
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256){
    return (_left + initialValue) / _right;
  }
}
