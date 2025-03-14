pragma solidity ^0.8.0;
contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,0,0,4,0,0); }
  receive() external payable { }
}

contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,2,3,4,5,6); }
  fallback() external payable { }
}
contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,0,0,4,0,0); }
  receive() external payable { }
}

contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,2,3,4,5,6); }
  fallback() public pure { }
}

contract SemanticEquivalent2018
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,0,0,4,0,0); }
  fallback() external payable { }
}
