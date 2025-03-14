pragma solidity ^0.8.0;
contract SolveModul
{
   bytes memory p = 'This is a byte array';
   int memory q = -1;
   int[] memory arrX = [1];
   int[] memory arrX2 = [10, 20, 30];
   int[] memory arrY;
   int[256][256] memory mat0;

   function test() public pure returns (uint256) {

       p = bytes(q);
       arrayLength();
       uint256 d = uint224Mod8(p);








       bytes memory bd = bytes(p);
