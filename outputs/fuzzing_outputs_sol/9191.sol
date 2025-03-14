pragma solidity ^0.8.0;
contract Caller9 {
  constructor(address payable _sender) { }
  receive() payable {}
  fallback() payable {}
}
