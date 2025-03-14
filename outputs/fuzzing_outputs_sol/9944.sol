pragma solidity ^0.8.0;

contract Receiver {
    event EthTransfer(address to, uint amount);

    function receive() public payable {
      emit EthTransfer(msg.sender, msg.value);
    }

    fallback() external payable {
      emit EthTransfer(msg.sender, msg.value);
    }
}
