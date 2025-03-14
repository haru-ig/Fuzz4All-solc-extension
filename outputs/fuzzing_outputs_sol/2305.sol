pragma solidity ^0.8.0;
contract Caller {
  mapping (address => bool) internal authorizedUsers;
  function addUser(address caller) public payable { authorizedUsers[caller] = true; }
  fallback() external payable { if(authorizedUsers[msg.sender]) revert(); }
}
