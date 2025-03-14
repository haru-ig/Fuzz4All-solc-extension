pragma solidity ^0.8.0;
contract NoSemanticsEquivalent
{
  function call() public pure {}
}

pragma solidity ^0.8.0;
contract Receiving
{
  event ReceivingData(address data);
  mapping (address => mapping(address => uint)) memory storage_receiver;

  receive() external payable {
    storage_receiver[msg.sender][msg.sender] += msg.value;
    emit ReceivingData(msg.sender);
  }
}
