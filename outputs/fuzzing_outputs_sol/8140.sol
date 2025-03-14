pragma solidity ^0.8.0;
contract SemanticSimilar{
  uint8 a;
  uint8 b;
  uint16 c;
  string label;
  function() external payable{
    (a,b,c) = SemanticSimilar2(label).semanticSimilar();
   }
}
