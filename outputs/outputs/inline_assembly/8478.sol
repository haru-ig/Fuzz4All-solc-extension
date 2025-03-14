pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test2 = 100;
   function solve() public pure returns (uint) {
      if (test1!= 0 && test1 % 2 == 1) {
         return 1;
      }
      if(test1 == 0) {
         return 1;
      }

      return 2;
   }
}
