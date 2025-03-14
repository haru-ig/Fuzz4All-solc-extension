pragma solidity ^0.8.0;
contract Mutant1
{
   bool public b;
   constructor() public {
      b = true;
  }
  receive() external payable {}
}
