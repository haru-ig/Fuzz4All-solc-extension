pragma solidity ^0.8.0;
contract SemanticEquivalent2
{
  uint8 public a { value: 10 };
  uint8 public b;
  uint256 public c { value: 10 };
  uint256 public d;
  uint64 public e { value: 10 };
  int8 public f;
  int256 public g;
  int64 public h { value: 10 };

  constructor() public
  {
    a = 10;
  }
}
