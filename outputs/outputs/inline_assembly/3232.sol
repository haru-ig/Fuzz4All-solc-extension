pragma solidity ^0.8.0;
contract MutatedMutate {
  uint public _contractValue;
  uint public _amounts;
  uint public _amounts2;
  uint public _amounts3;
  address[] public _addresses;
  constructor() {
    _addresses[0] = msg.sender;
  }
  uint[] public _array;
  uint internal _arrayValue;
  uint internal _arrayValue2;
  uint internal _arrayValue3;
  function arrayGet(uint index) public view returns (uint) {
    return _array[index];
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
  function ChangeAmounts(uint v1,uint v2,uint v3) public returns (uint) {
   _amounts = 5;
     _amounts2 = _amounts2 + v1 + v2 + v3;
     _amounts = _amounts + v1 + v2 + v3;
      _amounts3 = _amounts3 + v1 + v2 + v3;
   return _amounts;
  }
  function ChangeArrayValue(uint v1,uint v2,uint v3) public returns (uint) {
  uint _sizeOfArray = 10;

  address[] memory _array2 = new address[](<3>_sizeOfArray);
  _array2[10] = address(this);
  _array2[5] = address(this);
  _array2[2] = address(this);
  _array2[2] = address(this);
uint _indexOfArray = 11;

  uint[] memory _newAdressArray = new uint[](<3>_sizeOf
