pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  address[] private _settableAddress;
  constructor (address[] memory addresses) {
    _initialValue    = 10;
    _settableAddress = addresses;
  }
  function setAddress(uint256 _index, address _address) public {
    _settableAddress[_index] = _address;
  }
  function divide(uint256 _left, uint256 _right) public view returns(uint256){
    return (_left + _initialValue) / _right;
  }
}
