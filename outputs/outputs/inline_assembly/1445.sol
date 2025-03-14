pragma solidity ^0.8.0;
contract Mutant10u3
{
  struct Rectangle
  {
    uint32 a;
    uint32 b;
  }
}
contract Mutant10u4
{
  struct Rectangle
  {
    uint40 a;
    uint40 b;
  }
}
contract Mutant10u5
{
  struct Rectangle
  {
    uint512 a;
    uint512 b;
  }
}
contract Mutant10u6
{
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }
}
contract Mutant10u7
{
  struct Rectangle
  {
    uint200 a;
    uint200 b;
  }
}
