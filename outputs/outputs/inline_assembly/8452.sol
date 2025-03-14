pragma solidity ^0.8.0;
contract SolveModul
{
   struct Solution
   {
       uint a;
       uint b;
   }

   function test222() public pure returns(Solution memory) {
       return Solution(9 - 2, 2 + 2 + 2);
   }
}
