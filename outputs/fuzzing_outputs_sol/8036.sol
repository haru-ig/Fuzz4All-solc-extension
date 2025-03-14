pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  int32 public _int32;
  function test() external
  {
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    e = 1;
    f = 1;
    g = -1;
    h = -1;
  }
  function test1() external
  {
    _int32 = 1;
  }
}
