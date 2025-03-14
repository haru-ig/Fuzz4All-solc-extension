pragma solidity ^0.8.0;
contract SemanticEquivalentB
{
  uint8 a;
  uint16 b;
  uint64 c;
  uint128 d;
  bool e;
  int8 f;
  int16 g;
  struct S1
  {
    uint16 field_d;
  }
}
pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function semanticEquivalent() pure virtual external returns (SemanticEquivalentA memory, SemanticEquivalentA memory) {
    return SemanticEquivalentA({1: 42}, SemanticEquivalentA({2: 42}));
  }
}
