pragma solidity ^0.8.0;
contract Contract {
  uint internal _contractValue;
  uint internal _amounts;
  uint internal _amounts2;
  uint internal _amounts3;
  address[] public _addresses;
  constructor() {
    _addresses[0] = msg.sender;
  }
  uint[] public _arrayValues;
  uint internal _arrayValue;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  function arrayGet(uint index) public view returns (uint) {
    return _arrayValues[index];
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
  function GetArrayValue() public view returns (uint) {
    return _arrayValue;
  }
  function GetArrayValue2() public view returns (uint) {
    return _arrayValue2;
  }
  function GetArrayValue3() public view returns (uint) {
    return _arrayValue3;
  }
  function ChangeValue(uint v1,uint v2,uint v3) public returns (uint) {
   _contractValue = _contractValue + v1 + v2 + v3;
   return 2 ;
  }
  uint[] public _array;
  function ChangeArrayValue(uint v1,uint v2,uint v3) public returns (uint) {
  _arrayValue = 8;
     _arrayValue2 = _arrayValue2 + v1 + v2 + v3;
     _arrayValue = _arrayValue + v1 + v2 + v3;
      _arrayValue3 = _arrayValue3 + v1 + v2 + v3;
   return _arrayValue;
  }
}
