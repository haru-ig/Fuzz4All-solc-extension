pragma solidity ^0.8.0;
contract L {
  function m() onlyOwner public {}
  constructor() public { deployer = msg.sender; }
}

contract M is L {
  constructor() public { deployer = msg.sender; }
  function m() public onlyCreator public { }
}
