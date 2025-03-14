pragma solidity ^0.8.0;
contract SolveMutate
{
   uint public constant test1 = 100;
   function solve() public pure {
      if (test1 == 0) {
         test1.0 = 1;
      }
   }
}
