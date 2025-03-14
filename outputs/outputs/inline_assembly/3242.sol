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
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
  function ChangeArrayValue(uint v1,uint v2,uint v3) public returns (uint) {
    uint result=_arrayValue2+v1+v2+v3;
    _arrayValue2=result;
    return result;
   }
}
