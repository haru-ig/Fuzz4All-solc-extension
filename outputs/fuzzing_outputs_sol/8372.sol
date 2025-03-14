pragma solidity ^0.8.0;
contract SemanticSimilar371 {
  uint256 _a;
  uint256 _b;
  constructor() public {
    _a = 0;
  }
  function doSomething() public pure returns (bool) {
    return true;
  }
  fallback () external {
    _b = _a + 1;
  }
}
