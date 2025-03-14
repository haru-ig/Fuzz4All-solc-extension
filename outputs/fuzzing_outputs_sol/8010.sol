pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns(uint8,uint256,uint64,int8,int256,int64)
  {
    uint8 _uint8Result = 1;
    uint256 _uint256Result = 2;
    uint64 _uint64Result = 3;
    int8 _int8Result = 4;
    int256 _int256Result = 5;
    int64 _int64Result = 6;
    return (
      1,
      2,
      3,
      4,
      5,
      6
    );
  }
}
