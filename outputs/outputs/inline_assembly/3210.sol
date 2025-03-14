pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  address public owner;
  mapping(address => uint) public _amounts;
  constructor() {
    owner = msg.sender;
    _value = 10;
    _amounts[msg.sender] = 10;
  }
  function getAmount(address account) public view returns (uint) {
    return _amounts[account];
  }
  function getAddressAndAmount(address account) public view returns (address, uint) {
    return (account, _amounts[account]);
  }
  function updateAmount(address account, uint amount) public returns (uint) {
    require(msg.sender == owner, "incorrect sender");
    return _amounts[account];
  }
  function setAmount(address account, uint amount) public returns (uint) {
    _amounts[account] = amount;
    return 10;
  }
}

pragma solidity ^0.8.0;
contract Contract {
  uint internal _value, _totalSupply;
  address public owner;
  mapping(address => uint) public _amounts;
  mapping(address => bool) public _allowedAddresses;
  constructor() {
    owner = msg.sender;
    _value = 100;
    _totalSupply = 100;
    for (uint i = 0; i < 10; i++) {
      _amounts[i] = 0;
    }
    for (uint i = 10; i < 100; i++) {
      _allowedAddresses[i] = true;
    }
  }
  function getAmount(address account) public view returns (uint) {
    return _amounts[account];
  }
  function getAddrAndAmount(address account) public view returns (address, uint) {
    return (account, _amounts[account]);
  }
  function updateAmount(address account, uint amount) public returns (uint) {
    require(msg.sender == owner, "incorrect sender");
    return _amounts[account];
  }
  function setAmount(address account, uint amount)
