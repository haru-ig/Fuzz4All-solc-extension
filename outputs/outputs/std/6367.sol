pragma solidity ^0.8.0;
contract Mutator {
  address[] settableAddresses;
  constructor() {
    setAddress(0, address(0));
  }
  function setAddress(uint256 _index, address _address) public {
    settableAddresses[_index] = _address;
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256){
    return (_left + initialValue) / _right;
  }
  function call(uint256 _index, uint256 _amount) public returns(uint256){
    return settableAddresses[_index].call{value: _amount}("");
  }
}
