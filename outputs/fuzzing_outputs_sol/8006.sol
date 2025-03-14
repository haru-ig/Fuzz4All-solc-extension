pragma solidity ^0.8.0;
contract SemanticEquivalent {
  function test() public pure returns(uint8,uint256,uint64,int8,int256,int64) { return (1 + 2, 2 * 3, 3 + 4, 4 - 5, 5 * 6, 6 / 7); }

  function test1() public purereturns(uint8) { return (1 + 2); }
}
