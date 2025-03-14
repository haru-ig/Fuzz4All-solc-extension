pragma solidity ^0.8.0;
contract Ownable { constructor () { _initialOwner = msg.sender; _owner = msg.sender; } address public _initialOwner; address public _owner; modifier onlyOwner() { require(msg.sender == _owner, "Ownable: caller is not the owner"); _; } modifier onlyInitialOwner() { require(msg.sender == _initialOwner, "Ownable: caller is not the inital owner"); _; } }
