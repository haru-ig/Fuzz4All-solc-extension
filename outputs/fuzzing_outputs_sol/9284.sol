pragma solidity ^0.8.0;
contract SemanticFallback {
  function func() external payable {
    require(msg.value > 0);
    transfer(msg.sender, msg.value);
  }
  receive();
}
