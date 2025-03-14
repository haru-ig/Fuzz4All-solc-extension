pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  uint256 xprev;
  constructor() public{
    x = 314 + 79 * 3 + 5;
    xprev = 314;
  }
}
