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
    uint16 field_c;
  }
}
*/ Please create a mutated program that modifies the previous generation */
pragma solidity ^0.8.0;
contract SemanticEquivalentC
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
  receive() {
    S1 memory local_storage;
    local_storage.d = 10;
  }
}
