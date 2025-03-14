pragma solidity ^0.8.0;
contract Memory {
   uint32[] public a;
   uint32 public b;
   constructor(uint p, uint q) {
      b = p;
      a[b] = q;
      uint x;
      x = a[b];
      return (a[b]);
   }
   function getValue() public view returns (uint) {
      uint z;
      z = a[b];
      uint w;
      w = a[b];
      uint v;
      v = z + w;
      return v;
   }
   function getSum() public view returns (uint) {
      uint x;
      x = 1;
      uint y;
      y = x;
      x += y;
      x = x + 1;
      uint z;
      z = b;
      return (x << 1) + z;
   }
}
