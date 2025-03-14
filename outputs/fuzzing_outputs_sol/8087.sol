pragma solidity ^0.8.0;
contract SemanticEquivalentK10
{
  uint c;
}
contract SemanticEquivalentK11
{
  uint a;
  uint256 b;
  uint8 c;
}
contract SemanticEquivalentK12
{
  uint a;
}
contract SemanticEquivalentK13
{
  uint256 a;
  uint8 c;
}
contract SemanticEquivalentK14
{
  uint8 c;
  uint256 a;
}
contract SemanticEquivalentK3
{
  address to;

  uint(8,0) a;
  uint(256,1) b;
  uint(1,0) c;
  uint8 d;
  uint(0,0) e;
}
contract SemanticEquivalentK4
{
  address to;

  uint8(256,1) a;
  uint(8,0) b;
  uint(1,0) c;
  uint16 d;
  uint8 e;
}
contract SemanticEquivalentK5
{
  address to;

  uint8(256,1) a;
  uint(8,0) b;
  uint(1,0) c;
  uint8 d;
  int(8,0) e;
}
contract SemanticEquivalentK6
{
  address to;

  uint8(256,1) a;
  uint(8,0) b;
  uint(1,0) c;
  int(0,0) d;
  uint8 e;
}
contract SemanticEquivalentK7
{
  address to;

  uint8(256,1) a;
  uint(8,0) b;
  uint(1,0) c;
  uint8 d;
  uint256(256,1) e;
}
contract SemanticEquivalentK8
{
  address to;

  uint8(256,1) a;
  uint(8,0) b;
  uint(1,0) c;
  uint16 d;
  uint256(256,1) e;
}
contract SemanticEquivalentK9
{
  address to;

  uint(0,0) a;
  uint(0,0) b;
  uint8(0,0) c;
  uint16 d;
  uint8 e;
}
contract SemanticEquivalentK10
{
  address to;

  uint(0,0) a;
  uint(0,0) b;
  uint8(0,0) c;
  uint8 d;
  uint256(0,0) e;
}
contract SemanticEquivalentK11
{
  uint(8,0) a;
  uint(256,1) b;
  uint8(0,0) c;
  uint16 d;
  uint8 e;
}
contract SemanticEquivalentK13
{
  uint(0,0) a;
  uint(0,0) b;
  uint(8,0) c;
  uint25
