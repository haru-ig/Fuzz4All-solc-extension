pragma solidity ^0.8.0;
interface CallerInterface {
  function callContract() external payable;
}

contract Caller is CallerInterface {
  address public payable contractAddress;

  constructor() {
    contractAddress = msg.sender;
  }

  function callContract() public payable {
    CallContract(contractAddress).callContract(msg.sender);

    address payable contractAddressSender = CallContract(contractAddress).callContract(msg.sender);
    require(contractAddressSender == msg.sender);
  }
}
