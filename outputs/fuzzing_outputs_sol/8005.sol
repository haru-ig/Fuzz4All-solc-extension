pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 constant = 10;
  function test() public pure returns(uint8) { return constant; }
}
