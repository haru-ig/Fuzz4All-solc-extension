pragma solidity ^0.8.0;
contract SolveWithModul
{
   uint public constant test3 = 100;
   uint public constant test1;

   function solve() public pure returns (uint) {
      (test1) = 0x3FF00000;
      uint  result = 1;
      while (result!= 2 || test3 > 0) {
         ((test3)--) = 0x3FF000000;
         uint  result = test1 == 0? 1 : 2;
      }
      return result;
   }
}
