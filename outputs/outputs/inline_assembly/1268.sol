pragma solidity ^0.8.0;
contract Mutant
{
  uint256 public x1;
  uint256 public x2;
  uint256 y;
  uint256 z;
  uint256 private num;
  constructor public {
    y = x1;
    z = x2;
    num = y + z;
  }

}
