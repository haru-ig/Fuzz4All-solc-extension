pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test1 = 100;
   function solve_1() public pure returns (uint) {
      uint i = 0;
      while (i < 10) {
         i++;
      }
      return test1;
   }
   function solve_2() public pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint i = 0;
         do {
             i++;
         } while (i < 10);
         r = 2;
      }
      return r;
   }
   function solve_3() public pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = test1;
      } else {
         uint i = 0;
         do {
             i++;
         } while (i < 10);
         r = 2;
      }
      return r;
   }
   function solve_4() public pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 4;
      } else {
         uint i = 0;
         do {
             i++;
         } while (i < 10);
         r = 2;
      }
      return r;
   }
}
