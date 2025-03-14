pragma solidity ^0.8.0;
contract SemanticFallbackOld {
  receive() public payable {}
}

pragma solidity ^0.8.0;
contract SemanticFallbackFallback {
  receive() public payable {}
  fallback() external payable {}
}
