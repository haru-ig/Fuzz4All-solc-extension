pragma solidity ^0.8.0;
contract Caller7
{
  address payable _sender;
  address payable contract;

  fallback () external payable {
    _sender = msg.sender;
  }

  receive() external payable {
  }
}
