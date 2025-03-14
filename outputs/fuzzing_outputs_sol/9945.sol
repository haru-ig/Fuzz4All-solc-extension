pragma solidity ^0.8.0;
contract Receiver2 {
    event EthTransfer(address to, uint amount);
    function() external payable {
      emit EthTransfer(msg.sender, msg.value);
    }
    fallback () external payable {
      emit EthTransfer(msg.sender, msg.value);
    }
    receive() external payable {
      emit EthTransfer(msg.sender, msg.value);
    }
}
