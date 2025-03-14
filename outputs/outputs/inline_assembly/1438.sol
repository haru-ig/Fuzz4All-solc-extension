pragma solidity ^0.8.0;
contract Mutant
{
  struct Rectangle
  {
    uint128 public a;
    uint128 public b;
  }
}

pragma solidity ^0.8.0;
contract LittleMutant
{
  struct Rectangle
  {
    uint128 internal a;
    uint128 internal b;
  }
}
