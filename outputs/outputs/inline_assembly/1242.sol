pragma solidity ^0.8.0;
contract Mutant
{
  uint32 public x;
  constructor() {

    x = 0xF0000;
  }
  receive() external payable {}
}
