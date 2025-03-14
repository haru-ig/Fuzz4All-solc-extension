pragma solidity ^0.8.0;
contract contract {
  uint internal _contractValue;
  uint[] internal _amounts;
  uint internal _amounts2;
  uint internal _amounts3;
  address[] internal _addresses;
  constructor() {
    _addresses[0] = msg.sender;
  }
  uint[] internal _arrayValues;
  uint internal _arrayValue;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  function arrayGet(uint index) public view returns (uint) {
    return _arrayValues[index];
  }
  function getAmount() public view returns (uint) {
    return _amounts2;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
  function GetArrayValue() public view returns (uint[]) {
    return _arrayValue;
  }
