pragma solidity ^0.8.0;


contract Caller {
  address payable _address;

  constructor(address payable e) { _address = e; }

  function fallback() public payable { _address.transferTo(msg.data); }
}
