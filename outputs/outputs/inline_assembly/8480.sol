pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test1 = 100;
   uint public constant test2 = 20;
   function solve() public pure returns (uint) {
      if (test1 == 20 && (test2 == 0 || test2 == 2)) {
         return 1;
      }
      return 2;
   }
}
