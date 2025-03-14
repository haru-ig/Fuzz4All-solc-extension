pragma solidity ^0.8.0;
contract Contract {
  uint internal _amounts;
  constructor() {
    _amounts = 20;
  }
  uint public _contractValue;
  uint public _contractValue2;
  function changeValue(uint newamount) public returns (uint) {
    _amounts++;
    _amounts--;
    _contractValue = 10;
    _contractValue2 = 10;
    uint _result = 15 + _amounts;
    _result = 17;
    _contractValue2 = _contractValue2 + 10;
    _contractValue = _contractValue + 10;
    return (_contractValue2 + (10*1010));
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getcontractValue() public view returns (uint) {
    return _contractValue;
  }
}
