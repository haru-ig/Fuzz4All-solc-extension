pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 public a;
  uint8 public b = 1;
  uint256 public c;
  uint256 public d = 2;
  uint64 public e;
  int8 public f = -11;
  int256 public g;
  int64 public h;

  function test() external {}
}
