pragma solidity ^0.8.0;
contract Solidity_equivalent_32Mutated1 {
   function set(uint x,uint y) public { require(x > 4); }
   function get(uint y) public view { require(y < 14); }
   function mul(uint x, uint y) public pure returns (uint) { return (x * y); }
   function div(uint x, uint y) public pure returns (uint) { require((x == 1) || (x % y == 0)); return (x / y); }
   function add(uint x, uint y) public pure returns (uint) { require((x + y) >= x); return (x + y); }
}
