pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 public a = 10;
  uint16 public b = 10;
  uint64 public c = 10;
  uint128 public d = 10;
  bool public e;
  int8 public f;
  int16 public g;
  S1 public h;
}

pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  S1 public h;
}
