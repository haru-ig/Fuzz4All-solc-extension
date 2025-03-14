pragma solidity ^0.8.0;
contract Mutant2
{
  address payable public x;
  constructor() {
    x = 14;
  }
  receive() payable external {
    if (x >= 0) {
      x /= 10;
    }
  }
}
