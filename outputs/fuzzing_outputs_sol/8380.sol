pragma solidity ^0.8.0;
contract SemanticSimilar371 {
  uint256 a;
  constructor() public {}
  function getA() public pure returns (uint256) {
    return a;
  }
  function setA(uint256 a) public {
    a = a;
  }
  fallback () external {
    uint256 b = a;
  }
  receive () external payable {
    uint256 c = a;
  }
  receive () external payable {}
}
contract SemanticSimilar371_mod2 {
  uint256 a;
  constructor() public {}
  function getA() public pure returns (uint256) {
    return a;
  }
  function setA(uint256 a) public {
    a = a;
  }
  fallback () external {
    uint256 b = a;
  }
  receive () external payable {
    uint256 c = a;
  }
}
