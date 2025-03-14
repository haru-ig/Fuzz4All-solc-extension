pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test1 = 100;
   function solve() public pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint i = 0;
         while (i < 10) {
             i++;
         }
         r = 2;
      }
      return r;
   }
}
