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
    _amounts[account] = amount;
    _value = 1;
    return 10;
  }
}
