pragma solidity ^0.8.0;
contract Contract {
  uint internal _value;
  address public owner;
  mapping(address => uint) public _amounts;
  bytes private message;
  bytes4 private messageSelector;
  constructor() {
    owner = msg.sender;
    _amounts[msg.sender] = 10;
    message = "hi";
  }
  function getAmount(address account) public view returns (uint) {
    return _amounts[account];
  }
  function getMessage() public view returns (bytes8) {
    return messageSelector;
  }
  function setMessage(bytes4 selector) public {
    messageSelector = selector;
  }
}
