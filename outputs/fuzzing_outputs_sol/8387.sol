pragma solidity ^0.8.0;
contract SemanticSimilar385 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 5;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint256 b = a;
  }
}
contract SemanticSimilar385_mod2 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 1;
  }
  function setA(uint256 a2) public {
    a = a2;
  }
  fallback () external {
    uint256 b = a;
  }
}
