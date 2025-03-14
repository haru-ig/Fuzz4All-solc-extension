pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

contract I {

}
contract AddressBook {
  I constant private _addressBookInterface = I(0xAb82A4A4a4A8f9425594A5538c50405d38d4f53D);
  address[] private _addresses;
  uint256 private _length;
  mapping(address => bytes32) private _mapping;

  constructor() { }

  function add(address _address) public {
    require(address(_address)!= 0x0, "Address");
    uint256 i = _addresses.push(_address) - 1;
    _mapping[address(_address)] = keccak256("newAddress" + i);
    emit Added(i, _address);
  }

  function get(uint256 i) public {
    i;
    require(i >= 1, "Index below 1");
    require(i <= _length, "Index out of range");
    bytes32 k = _mapping[address(_addresses[i - 1])];
    require(keccak256(k) == k, "Not an address");
    emit Removed(i - 1);
  }

  function set(uint256 i, address _address) public {
    require(_address!= 0x0, "Address");
    uint256 j = count() + 1;
    _mapping[address(_addresses[i - 1])] = keccak256("newAddress" + j);
    emit Added(j, _address);
    _addresses[i - 1] = _address;
    emit Changed(i - 1, _addresses[i - 1]);
  }

  function remove(uint256 i) public {
    require(i >= 1, "Index below 1");
    require(i <= count(), "Index out of range");
    address addressToReturn = _addresses[i - 1];
