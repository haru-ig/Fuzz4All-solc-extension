pragma solidity ^0.8.0;
contract SemanticEquivalentK1
{
  struct Fallback
    {
      function f(uint128) external { bytes memory tmp[4294967295]; }
    }

  struct
  {
    uint8 x;
    uint8 y;
    uint16 z;
    uint8 w;
    uint16 v;
  } Data;

  constructor()
  {
    Data.x = 1;
    Data.y = 2;
    Data.z = 3;
    Data.w = 4;
    Data.v = 5;
  }

  function getData() public returns (uint16 x, uint16 y)
  {
    x = 1;
    y = 2;
    return (x, y);
  }

  function setNumber(uint8 x, uint8 y, uint16 z, uint8 w, uint16 v) external
    {
      require(0 <= x && x <= 48);
      require(0 <= y && y <= 48);
      require(0 <= z && z <= 14);
      require(0 <= w && w <= 12);
      require(0 <= v && v <= 62);
    }

  fallback() external { }

  receive() external pure { }
}
