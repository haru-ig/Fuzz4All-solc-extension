pragma solidity ^0.8.0;
contract Caller
{
  SemanticEquivalent c;
  fallback() external payable { c = SemanticEquivalent(0x12345678); }
  receive() external pure { assert(c.test() == (1,2,3,4,5,6)); }
}
