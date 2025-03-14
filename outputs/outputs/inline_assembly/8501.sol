pragma solidity ^0.8.0;
contract SolveWithModul
{
   uint public constant test3 = 100;
   uint public constant test = 10;
   function solve() public pure returns (uint) {
      uint r;
      if (test == 0)
         r = 1;
      else {
         uint i;
         for (i = 0; i < 10; i++);
         r = 2;
      }
      return r;
   }
}
