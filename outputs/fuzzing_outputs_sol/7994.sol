pragma solidity ^0.8.0;
contract Caller
{
  function contract() public {
    return SemanticEquivalent.call();
  }
}
