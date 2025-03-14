pragma solidity ^0.8.0;
contract Array_equivalent_21Mutated {
   function set(uint x, uint index) public pure { require(x < 2 ** 0x21); }
   function get(uint index) public view returns (uint a) { require(index < 2 ** 0x21); a = (x * 21) + index; }
   function mul(uint x, uint y) public view returns (uint a) { a = (uint(x) * uint(y)) % 21; }
   function div(uint x, uint y) public view returns (uint a) { a = ((x * 21) + uint((x + y - 1) / y)) % 21; }
   function add(uint x, uint y) public view returns (uint a) { a = (x * 21 + y) % 21; }
}
