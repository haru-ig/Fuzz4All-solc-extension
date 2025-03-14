pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  address public owner;
  mapping(address => uint) public _amounts;
  constructor() {
    owner = msg.sender;
    _value = 0x2;
    _amounts[msg.sender] = 20;
  }
  function getAmount(address account) public view returns (uint) {
    return _amounts[account];
  }
  function updateAmount(address account, uint amount) public returns (uint) {
    require(msg.sender == owner, "incorrect sender");
    _amounts[account] = amount;
    return 20;
  }
}
