pragma solidity ^0.8.0;
contract SemanticEquivalentK2
{
  bytes memory e;
  uint f;
  function foo1() public pure returns (bytes memory)
  {
    (e, f) = (bytes("This is a test."), 123);
    return (e);
  }
}
