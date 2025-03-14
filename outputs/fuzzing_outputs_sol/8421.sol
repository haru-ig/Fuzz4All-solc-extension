pragma solidity ^0.8.0;
contract CallerExample {
  function receive() external payable {

    delete selfdestruct(msg.sender);
  }
}
