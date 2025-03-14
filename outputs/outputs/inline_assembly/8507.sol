pragma solidity ^0.8.0;
contract SolveWithSemanticModul
{
   uint public constant test2 = 100;
   uint public constant test3 = 10;
   uint public constant test = 10;

   function solve() public pure returns (uint) {
       uint r;
       if (test == 0) {
           r = 1;
           if (test2 == 100) {
               return 1;
           } else {
               return 0;
           }
       } else {
           uint i;
           for (i = test2; i < 10; i++) {
           }
           r = 2;
           if (test == test3) {
               return 2;
           } else {
               return 1;
           }
       }
       return r;
   }
}
