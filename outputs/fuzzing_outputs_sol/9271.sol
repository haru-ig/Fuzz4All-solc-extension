pragma solidity ^0.8.0;
contract SemanticFallbackExistingOld {
  receive() external payable {
    fallback();
  }
}
