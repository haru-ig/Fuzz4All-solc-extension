pragma solidity ^0.8.0;
contract SemanticSimilar4{
  uint256 v;
  fallback () {
    uint256 a = this.v;
    SemanticSimilar3(a).semanticSame();
  }
}
