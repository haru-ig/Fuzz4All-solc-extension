pragma solidity ^0.8.0;
contract SemanticSimilar370 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function doSomething() public pure returns (bool) {
    return true;
  }
  fallback () external {
    uint256 b = a;
  }
}
