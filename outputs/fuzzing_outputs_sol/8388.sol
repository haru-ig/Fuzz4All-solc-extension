pragma solidity ^0.8.0;
contract SemanticSimilar386 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 15;
  }
  function setA(uint256 a2) public {
    a = a2 + 1;
    fallback();
  }
  fallback () external {}
  receive () external {
  }
}
contract SemanticSimilar386_mod2 {
  uint256 a;
  constructor() public {
    a = 0;
  }
  function getA() public pure returns (uint256) {
    return 15;
  }
  function setA(uint256 a2) public {
    a = a2 + 1;
    fallback();
  }
  fallback () external {}
  receive () external {
  }
}
