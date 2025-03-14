pragma solidity ^0.8.0;
contract Mutate {
  uint public _contractValue;
  uint[] _amounts;
  uint[] internal _amounts2;
  uint internal _amounts2Value;
  uint internal _amounts2Value2;
  uint internal _amounts2Value3;
  uint internal _amounts2Value4;

  address[] internal _addresses;
  constructor() {
    _addresses[0] = msg.sender;
  }

  function arrayGet(uint index) public view returns (uint)  {
    return _amounts[index];
  }
  function getAmount() public view returns (uint) {
    return 0;
  }
  function getContractValue() public view returns (uint) {
    return _contractValue;
  }
  function ChangeArrayValue(uint v1,uint v2,uint v3) public returns (uint) {
    _amountsValue = 5;
    _amounts2Value2 = _amounts2Value2 + v1 + v2 + v3;
    _amounts = _amounts + v1 + v2 + v3;
    return _amounts;
  }
}

pragma solidity ^0.8.0;
contract Mutate {
  uint public _contractValue;
  uint public _amounts;
  uint[] public _amounts2;
  uint[] internal _amounts3;
  uint internal _amounts3Value;
  uint internal _amounts3Value2;
    address[] public _addresses;

  uint internal _amounts2Value;
  uint internal _amounts2Value2;
  uint internal
