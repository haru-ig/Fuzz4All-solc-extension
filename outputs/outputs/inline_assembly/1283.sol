pragma solidity ^0.8.0;
contract Mutant2
{
   bool public b;
   constructor() public {
      uint a = 42;
      b = true;
      a = 28;
      a = 24;
      a = 16;
   }
   receive() external payable {}
}
