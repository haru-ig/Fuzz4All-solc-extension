pragma solidity ^0.8.0;
contract SemanticEquivalentL2
{
  uint8 a;
  uint16 b;
  uint64 c;
  uint128 d;
  bool e;
  int8 f;
  int16 g;
  address h;
  mapping(address => bool) i;
  struct S2
  {
    uint16 field_d;
  }

  function f() public {

    assembly {
      sstore(1, 0x612547)
    }
  }
}
