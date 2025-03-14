pragma solidity ^0.8.0;
contract SolveModul {
   uint public constant test1;
   function solve() public view returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 1;
         test1 = 2;
      } else {
         r = 2;
      }
      return r;
   }
}
