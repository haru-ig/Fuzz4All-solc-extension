pragma solidity ^0.8.0;
contract Mutate2 {
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
  function setArrayValue(uint index,uint v1,uint v2,uint v3) public returns (uint) {
    _array[index]=v1;
    _arrayValue+=v1;
    return _arrayValue;
   }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
}



assembly {
