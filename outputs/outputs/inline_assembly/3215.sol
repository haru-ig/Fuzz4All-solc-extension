pragma solidity ^0.8.0;
contract Contract2 {
  uint internal _amounts;
  uint public _contractValue;
  uint public _contractValue2;
  function changeValue(uint newamount) public returns (uint) {
    _contractValue = 10;
    _contractValue2 = 10;
    uint _result = 15;
    _result = 17;
    _amounts = newamount;
    return _amounts;
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function getcontractValue() public view returns (uint) {
    return _contractValue;
  }
}
