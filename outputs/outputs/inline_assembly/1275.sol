pragma solidity ^0.8.0;
contract Mutant2
{
   modifier onlyIfBSet()
   {
      if (b) _;
   }
   bool public b;
   constructor() public {
      b = true;
   }
}
