pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated {
   function set(uint x, uint index) public pure returns (uint) {}
   function get(uint index) public pure returns (uint) {}
   function sub(uint x, uint y) public pure returns (uint) {return (x-y) % (2**32);}
}
