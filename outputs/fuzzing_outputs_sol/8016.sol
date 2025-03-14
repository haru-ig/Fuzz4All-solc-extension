pragma solidity ^0.8.0;
struct SemanticEquivalent
{
  function test() public pure returns (uint8 i, uint256 u, uint64 u64, int8 i8, int256 i256, int64 i64);
}
contract Caller
{
  function main(bytes memory input) public {
    SemanticEquivalent(uint(input)).test.value(address(this), 0x41b3a7b02b680000)() returns( uint8 i, uint256 u, uint64 u64, int8 i8, int256 i256, int64 i64){
      i = _;
      u = uint(_);
      u64 = uint64(_);
      i8 = int8(_);
      i256 = int256(_);
      i64 = int64(_);
    }
  }
}
