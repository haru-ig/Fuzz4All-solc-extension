pragma solidity ^0.8.0;
contract SemanticFallbackWithCall {
  receive() external payable {}
  fallback() external returns(uint) {
    return 1;
  }
}
