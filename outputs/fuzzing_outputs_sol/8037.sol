pragma solidity ^0.8.0;
 contract SemanticEquivalent2 is SemanticEquivalent
{
  uint8 public a = 0;
  uint16 public b = 0;
  uint32 public c = 0;
  uint64 public d = 0;
  int8 public e = 0;
  int32 public f = 0;
  bytes32 public g;
  bytes4 public h;
  function test() public {
    a=5;
    b=5;
    c=2;
    d=6;
    e=-1;
    f=-6;
    g="Hello World";
    h="world";
  }
}
