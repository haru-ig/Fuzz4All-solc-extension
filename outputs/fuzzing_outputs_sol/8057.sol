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

  function mutated_function() public
  {
    delete a;
    delete b;
    delete c;
    delete d;
    delete e;
    delete f;
    delete g;
  }
}
