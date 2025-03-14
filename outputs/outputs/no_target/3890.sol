pragma solidity ^0.8.0;
 contract A {
     uint x;
     constructor() public {
         x = 1;
         uint160 a = 1 + 101;
         uint160 b = a + 10;
     }
 }
