pragma solidity ^0.8.0;
contract SemanticEquivalent2017
{
  function main() public pure { return 1; }
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64) { return (1,2,3,4,5,6); }
}

pragma solidity ^0.8.0;
contract Caller
{
  function test() public pure fallback(uint data) pure { uint s = 0; return 0; }
  function test2(uint callData, uint8 callData8) public pure returns (uint16 result) { result = uint16(calldata); return 0; }
}
