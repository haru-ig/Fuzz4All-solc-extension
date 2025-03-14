pragma solidity ^0.8.0;
contract Caller {
  function send(address to, uint x) public payable returns (uint) {
    return x + to.call.value(msg.value)();
  }
}
