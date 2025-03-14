pragma solidity ^0.8.0;
contract MutateAddresses {
  address[] public _addresses;
  uint internal _contractValue;
  uint public _amounts;
  constructor(address[] memory initAddress) {
    for (uint i=0; i< initAddress.length; i++)
    {
     _addresses[i] = initAddress[i];
    }
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function ChangeAddress(uint v) public returns (address) {
    _addresses[1] = v;
    return _addresses[1];
  }
  function ChangeAddress2(uint v) public returns (address) {
    _addresses[1] = v;
    return _addresses[1];
  }
  function ChangeAddresse(uint v) public returns (address) {
    _addresses[0] = v;
    return _addresses[0];
  }
}

pragma solidity ^0.8.0;
contract MutateCalls {
  uint internal _contractValue;
  uint public _amounts;
  constructor() {
  }
  function getAmount() public view returns (uint) {
    return _amounts;
  }
  function ChangeAddresse(uint v) public view returns (address){
    return _addresses;
  }
}
