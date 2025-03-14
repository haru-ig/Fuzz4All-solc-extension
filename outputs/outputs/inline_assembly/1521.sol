pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  uint256 xprev;
  constructor (uint256 xprev) public {
    x = 1;
    xprev = x;
  }
}
