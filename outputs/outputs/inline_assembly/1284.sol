pragma solidity ^0.8.0;
contract Mutant3
{
   bool public b;
   constructor() public {
      uint a = 42;
      b = address(this).balance < 42;
  }
  receive() external payable {}
}
