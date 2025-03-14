pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns (uint8 i, uint256 u, uint64 u64, int8 i8, int256 i256, int64 i64) { return (1,2,3,4,5,6); }
}
