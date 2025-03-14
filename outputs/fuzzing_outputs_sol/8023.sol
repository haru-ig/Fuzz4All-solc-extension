pragma solidity ^0.8.0;
contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,2,3,4,5,6); }
  receive() external payable { }
}
