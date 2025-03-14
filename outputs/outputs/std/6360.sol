pragma solidity ^0.8.0;
contract Mutator {
  uint256 private _initialValue;
  address[] private _settableAddress = [];
  constructor (address[] memory addresses) {
    _initialValue = 10;
    for (uint256 i = 0; i < addresses.length; i++) {
      _settableAddress.push(addresses[i]);
    }
  }
  function setAddress(uint256 _index, address _address) public {
    _settableAddress[_index] = _address;
  }

}
