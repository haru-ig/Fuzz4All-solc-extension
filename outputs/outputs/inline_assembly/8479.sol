pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test1 = 90;
   uint public constant test2 = 80;
   function solve() public pure returns (uint) {
      if (test1 == 0 && test2 == 0) {
         return 1;
      }
      return 2;
   }
}

```
