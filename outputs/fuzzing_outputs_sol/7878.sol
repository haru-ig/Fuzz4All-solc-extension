pragma solidity ^0.8.0;
contract Sender {
  address payable selfAddress;

  constructor () {
    selfAddress = msg.sender;
  }

  function callWithEther(uint amount) public payable {
    selfAddress.call{value: amount}("");

  }
}
