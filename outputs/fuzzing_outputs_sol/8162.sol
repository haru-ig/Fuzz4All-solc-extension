pragma solidity ^0.8.0;
contract SemanticSimilar3{
  uint256 v;
}
contract SemanticSimilar2{
  uint256 v;
}
contract SemanticSimilar1 is SemanticSimilar2, SemanticSimilar3{
  uint256 v;
}
