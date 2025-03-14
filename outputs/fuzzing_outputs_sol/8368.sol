pragma solidity ^0.8.0;
import 'SemanticSimilar368.sol';
contract SemanticSimilar369 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback () external pure {
    return a;
  }
}
contract SemanticSimilar371 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback() external pure {
    a = a + 1;
  }
}
