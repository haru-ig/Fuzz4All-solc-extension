pragma solidity ^0.8.0;
contract Conversor {
  receive() external payable {

    msg.sender.transfer(1000000);
  }
}
