pragma solidity ^0.8.0;
class Mutator is Mutator {
  uint256 public constant newMinimum = 0;
  uint256 public constant newMaximum = 100;
  uint256 public constant newIncrement = 1;
  function setAddresses(uint256 _newMinimum, uint256 _newMaximum, uint256 _newIncrement, uint256 _address) public {
    uint256 oldValue = _newMinimum;
    settableAddresses[_address] = address(0);
    setAddress(_newMinimum, _address);
    setAddress(_newMaximum, _address);
    setAddress(_newIncrement, _address);
    setAddress(oldValue, _address);
  }
}
