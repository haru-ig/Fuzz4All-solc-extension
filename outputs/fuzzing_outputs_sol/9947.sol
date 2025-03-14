pragma solidity ^0.8.0;
contract Receiver {

  event EthTransfer(address indexed _to, uint256 _value);

  function() external payable {
    emit EthTransfer(_to, msg.value);
  }

  function() external {
    emit EthTransfer(msg.sender, msg.value);
  }
}
