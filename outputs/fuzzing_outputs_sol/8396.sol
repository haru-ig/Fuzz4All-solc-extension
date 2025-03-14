pragma solidity ^0.8.0;
contract SemanticSimilar386 {
  uint256 a;
  modifier setA(uint256 a2) {
    a = a2;
    _;
  }
  fallback () public setA(uint128): payable {
    uint256 b = a;
  }
}
