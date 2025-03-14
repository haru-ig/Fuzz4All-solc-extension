pragma solidity ^0.8.0;
contract SolveModul
{
   uint public constant test1 = 100;
   function solve() public pure returns (uint) {
      if (test1) {
         return 1;
      }
      return 2;
   }
}
```
