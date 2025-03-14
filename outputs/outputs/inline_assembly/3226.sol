pragma solidity ^0.8.0;
contract Mutated {
  uint internal _contractValue;
  uint internal _amounts;
  address[] internal _addresses;
  uint[20][4] internal _arrayValues;
  uint internal _arrayValue;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  function arrayGet (uint index) public view returns (uint) {
    return _arrayValues[index][2];
  }
  function changeValue(uint v1) public returns (uint) {
    _addressValue = 0;
  }
}
