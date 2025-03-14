pragma solidity ^0.8.0;
contract Mutant4
{
  constructor() external
  {
      uint a = 42;
      b = address(this).balance < 42;
  }
  bool public b;
  receive() external payable {}
}
