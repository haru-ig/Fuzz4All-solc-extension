pragma solidity ^0.8.0;
contract SolveModul
{
   function test222() public pure returns (uint) {

      uint x;
      uint y;
      assembly {
           x := mod(138899, 20**8)
      }
      return 22 * 20**y * 10**uint(x) - 22 * 10**21;
   }
}
