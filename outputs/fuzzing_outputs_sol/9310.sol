pragma solidity ^0.8.0;
contract SemanticFallback {
  receive() external payable {
  }
  fallback() receive() external payable {
  }
}
