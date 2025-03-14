pragma solidity ^0.8.0;
contract Caller {

  fallback(address addr) external payable {
    msg.sender.transfer(address(this).balance);
  }
}
