pragma solidity ^0.8.0;
contract SemanticMutationExample2 {
  fallback() external payable {
    address addr = msg.sender;
    uint x = 2 ** 256 - 1;
    x = addr;
  }
}
