pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public { uint8 _a = 42; uint8 _b = 15; uint256 _c = 42; uint256 _d = 42; uint64 _e = 10; int8 _f = 9; int256 _g = -10; int64 _h = 42; }
}
