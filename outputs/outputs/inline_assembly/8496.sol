pragma solidity ^0.8.0;
contract SolveWithModul
{
   uint internal constant test3 = 100;
   uint internal constant test1 = 100;
   function solve() internal pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint i = 0;
         while (true) {
             i++;
         }
         r = 2;
      }
      return r;
   }
}
