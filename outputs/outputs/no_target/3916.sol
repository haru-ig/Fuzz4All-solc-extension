pragma solidity ^0.8.0;
 contract C {
     uint x;
     constructor () public {
         uint one = 0x100000000000000000000000000000000000000000;
         uint negativeOne = 0x8000000000000000000000000000000000000000000000000000000000000000000000000;
         uint max = uint(type(uint).max);
         uint oneMinusMax = uint(one - max);
         uint min = uint(type(uint).min);
         uint minusOne = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
         uint maxMinusOne = uint(max-one);

         x = 0x1FFFFFFFFFFFFFFF + one;
         x++;


         x = + one + oneMinusMax -max;
         x += one;
         x -=max;


         x = 0x0840000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
         x++;
         x++;

     }
 }
