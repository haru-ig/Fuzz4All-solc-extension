pragma solidity ^0.8.0;
contract SemanticFallbackNew {
  fallback() external payable {
  }
  receive() external payable {}
}
