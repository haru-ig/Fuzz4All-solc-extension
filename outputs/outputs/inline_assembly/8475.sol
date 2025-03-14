pragma solidity ^0.8.0;
contract MutateModul
{
   uint public constant test2 = 99;
   uint public constant test3 = 2;
   function solve() public pure returns (uint) {


      test2 = 2 * test2;
      test3 = test2 + test3;
      if (test1 == 0) {
         return 1;
      }
      return 2;
   }
}
