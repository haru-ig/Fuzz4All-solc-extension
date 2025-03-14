pragma solidity ^0.8.0;
contract Test52Mutant {
   uint[11] _m;
   uint _m2;
   uint[5] m;
   uint _m3;
   uint[] x;
   uint y;
   function f() public{
      y = x.length + 2;
      _m3 = x.length;
      _m = m.length + 149;
      _m2 = m.length;
      m[5] = 123;
      m.length += 9;
      x.length += 8;
      x.length /= 3;
      delete x[3];
      x[0].length = 1;
      y += 1;
   }
}
