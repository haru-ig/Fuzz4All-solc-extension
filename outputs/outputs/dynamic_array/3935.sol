pragma solidity ^0.8.0;
contract C {
   uint public f, g, h, i;
   uint public j;

   function f() public {
      uint[12] memory arr12;
      uint[42] memory arr42;
      f = 0;
      arr12[3] = 3;
      arr12[4] = 4;
      x = 1;
      arr12[5] = 5;
      x = 7;
      x = 0;
      x = 8;
      x = 9;
      x = 0;
      x = 0;
      i = 1;
   }
   function g() public {
      uint[12] memory arr12;
      uint[42] storage arr42;
      f = 0;
      arr12[3] = 3;
      arr12[4] = 4;
      i = 2;
      g = 1;
      arr12[5] = 5;
      g = 0;
      g = 0;
      g = 1;
      g = 1;
      j = 1;
   }
   uint y;
   uint[123] x;
}
