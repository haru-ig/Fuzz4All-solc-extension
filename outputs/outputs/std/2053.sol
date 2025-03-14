pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated {
   function set(uint x, uint index) public pure returns (uint) {
      uint temp = (x + 5) % 2**32;
      x = index % 2**32;
      return x;
   }
   function get(uint index) public pure returns (uint) {return uint(uint(uint(x - index) % (2**32))));}
   function sub(uint x, uint y) public pure returns (uint) {
      uint temp = (x - y) % (2**32);
      x = x % (2**32);
      return x;
   }
}
