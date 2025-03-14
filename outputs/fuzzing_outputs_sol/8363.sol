pragma solidity ^0.8.0;
contract SemanticSimilar367 {
  address payable sender;
  constructor() public {
    sender = payable(message.sender);
  }
  fallback () external { sender.transfer(0); }
}
