pragma solidity ^0.8.0;
contract Contract {
  uint private _amounts;
  bytes32 private _contractValue;
  constructor(uint amount) {
    _amounts = amount;
    _contractValue = "_test" ;
  }
  function changeValue(uint newamount) public {
    _amounts = numberdiv(_amounts + newamount, 2);
  }
  function getAmount() public returns (uint) {
    return uint(_amounts);
  }
  function getcontractValue() public returns (bytes32) {
    return bytes32 (_contractValue);
  }
}
contract Contract {
  uint internal _amounts;
  constructor(uint amount) {
    _amounts = uint(mul("10", amount));
    _amounts = 100;
    _amounts = _amounts + (10*1010);
  }
  function changeValue(uint newamount) public {
    uint _result = newamount + mul(_amounts, 2);
    uint _result2 = _result + "_";
    uint _result3 = "_";
  }
  function getAmount() public returns (uint) {
    return _amounts;
  }
}
