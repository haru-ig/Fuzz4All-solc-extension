pragma solidity ^0.8.0;
contract SemanticNonFallbackMutated2 {
  fallback() external payable {
  }
}
contract SemanticNonFallbackMutated3 {
  receive() external payable {
  }
}
contract SemanticNonFallbackMutated4 {
  receive() external {
  }
}
