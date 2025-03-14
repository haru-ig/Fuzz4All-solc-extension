pragma solidity ^0.8.0;
contract SemanticSimilar361 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  function get() public { }
  fallback() public {}
}
contract SemanticSimilar362 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  function get() public { }
  fallback() external payable {}
}
contract SemanticSimilar363 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback() external {}
}
contract SemanticSimilar364 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback() internal {}
}
contract SemanticSimilar365 {
  uint256 a;
  constructor() public {
    a = 1;
  }
  fallback() external {}
}
