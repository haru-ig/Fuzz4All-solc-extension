pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract SemanticEquivalentK4
{
  uint256 public value;
  function receive() payable public { }
  function set(string memory x) public { }
}
contract SemanticEquivalentK5
{
  uint256 public value;
  function set(string memory x) public { }
}
contract SemanticEquivalentK3Fallback
{
  uint32 value;
  uint8 a;
  uint8 d;
  uint256 e;
  uint8 b;
  uint256 c;
  string public functionFallback(uint8 a, uint256 c, uint256 e, uint8 b, uint8 d) public pure returns (uint32 value) { a += c + b; value = e * 2; d += e + 10; return value; }
}
contract SemanticEquivalentK4Fallback
{
  uint32 value;
  uint8 a;
  uint8 b;
  uint256 c;
  uint8 d;
  function receive() external payable { }
  function set(uint256 c, uint256 e, uint8 b, uint8 d) public { }
}
contract SemanticEquivalentK5Fallback
{
  uint32 value;
  uint8 a;
  uint8 b;
  uint256 c;
  uint8 d;
  function set(uint256 c, uint256 e, uint8 b, uint8 d) public { }
}
contract SemanticEquivalentK2
{
  uint32 p;
  uint32 x;
  uint32 y;
  constructor(uint32 y)
  {
    p = 0 + 1;
    x = 0 + 1;
    y = y + 2;
  }
  function callBack1(uint32 p1, uint32 x1, uint32 y1) internal pure returns (uint32 y2) { y1 += y + 10; return y2; }
  function callBack2(uint32 p1, uint32 x2) public returns (uint32 y2, uint32 p2, uint32 x22, uint32 y1) { p1 += x1 + 20; p2 = p + 100; if (uint32((p1 >> 54) & 3)!= 0) { x22 -= 1; } else { x22 += 15; } return (0,0,0,0); }
  function callBack3(uint32 p1, uint32 x1, uint32 y1) public returns (uint32 y2, uint32 p2, uint32 x2, uint32 y3) { p1 += x1 + 30; p2 = p + 101; if (uint32((p1
