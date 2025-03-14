pragma solidity ^0.8.0;
contract Array_equivalent_32Modified {
   constructor() public {
      uint[] storage array;
      array[0] = 10;
      uint8 x = 11;
      uint x2 = x;
      x = uint(uint8(uint32(x)));
      x = uint(uint32(x) - uint32(x));
      x = uint(uint32(x) & uint32(x));
      uint[] memory a = new uint[](1);
      a[0] = x;
   }

   function set(uint x, uint index) public pure {}
   function get(uint index) public pure {}
   function sub(uint x, uint y) public pure {}
}
