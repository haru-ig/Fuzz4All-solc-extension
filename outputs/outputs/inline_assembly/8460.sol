pragma solidity ^0.8.0;
contract SolveModul2
{
   function test() public pure {


      uint sum = 2;
      uint x = 1;
      sum = x + 2;
      uint y = 3;
      sum = x + 2;

      assertEq(sum, 5);

      uint z;
      sum = 26971 / 2;
      while (true) {
         x = 1;
         uint y = x - 1;
         if (y == 98) break;
         z = 10;
         while (y > 3) {
            x = x + 1; y = x + 2;
            z = z + 1;
         }
      }
      assertEq(z, 98);
   }
}
