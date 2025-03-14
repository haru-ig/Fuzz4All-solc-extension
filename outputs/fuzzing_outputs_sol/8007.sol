pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns(uint8,uint256,uint64,int8,int256,int64) { return NonSemanticEquivalent { } };
}
