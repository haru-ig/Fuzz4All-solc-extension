pragma solidity ^0.8.0;
contract MutatedTest {
   uint[5][10] a;
   uint[10] e;
   uint[10] f;

   uint[10] g;
   uint[10] d;

   uint[10][10] h;

   uint[10][10][10] n;

   uint[10] o;
   uint[10] p;
   uint[10] g;
   uint[5] c;

   uint[10][10] q;

   uint[5] m;


   function set(uint[10] x) public {
        a = x;
   }

   function test() public {
      uint[10] x = new uint(6);
      set(x);


      a[0][0] -= a[1][0];
      f[0] -= f[1];
      b[0] += b[1];
      d[0] *= 2;

      uint[10] y = new uint(5);
      set(y);


      uint[5] z = new uint[](4);


      uint[10] x1 = new uint(5);
      uint[5] x2 = new uint[](10);
      uint[10] x3 = new uint[](10);
      x2[0] = x3;
      x3[0] = x1;
      set(z);
   }
}
