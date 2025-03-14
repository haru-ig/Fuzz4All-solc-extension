pragma solidity ^0.8.0;
contract Fallback {
  address payable admin;
  constructor() {}
  function receive() external payable {
      emit EtherSent{amount: msg.value, from: msg.sender};
  }
  function setAdmin(address payable newAdmin) external{
      admin = newAdmin;
  }
}
