pragma solidity ^0.8.0;
contract Gen10t2
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
}
contract Mutant10u3
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256)b;
  }
}
contract Gen10t3
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128)b;
  }
}
contract Mutant10u4
{
  function Mutant10u4()
  {
    uint128 _n = 0;
    if (_n < 0) {
      return 10;
    }
  }
}
