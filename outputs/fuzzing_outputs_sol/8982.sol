pragma solidity ^0.8.0;
contract Caller {
  constructor(address call to) {
    receive();
  }
  function receive() public payable {}
}
