pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated2 {
   function get(uint index) public pure { uint i; for(i = 0; i < index && i < 255; i = i+1); }
   function get(uint i) public pure { uint x; for(x = 0; x < i && x < 255; x = x+1); }
   function set(uint index, uint value) public pure {}
   function set(uint i, uint value) public pure {}
   function mul(uint value, uint y) public pure {}
   function div(uint value, uint y) public pure {}
}
