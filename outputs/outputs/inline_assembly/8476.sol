pragma solidity ^0.8.0;
contract SolveMut
{
   uint public constant test = 100;
   function solve() public pure returns (uint) {
      if (test == 0) {
         test = test + 2;
         return 1;
      }
      return test;
   }
}
contract SolveComp
{
   uint public constant test = 0;
   function  solve() public pure returns (uint) {
       if (test > 1 ){
          test = 3;
          return 1;
      }
           test = 1;
           return test;
       }
}
