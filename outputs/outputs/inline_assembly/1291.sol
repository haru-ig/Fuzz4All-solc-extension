pragma solidity ^0.8.0;
contract Mutant3a
{
  constructor() public {
    uint b = 42;
    Mutant1 a = new Mutant1(address(this).balance < b);
  }
  receive() external payable {}
}
