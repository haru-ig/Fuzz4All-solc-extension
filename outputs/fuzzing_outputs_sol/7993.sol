pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function notCalled() public pure returns(bool) { return false; }
  receive () { }
}
