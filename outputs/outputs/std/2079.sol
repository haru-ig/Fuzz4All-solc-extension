pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated2 {
   function set(uint x, uint index_2d) public pure { require(x <= 2**32); }
   function get(uint index_2d) public view returns (uint a) {
        require(index_2d < 2**32);
        a = 2**32;
    }
   function mul(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = uint(x) * uint(y);
    }
   function div(uint x, uint y) public view returns (uint a) { require(x < 2**32 && y > 0); a = x / y; }
   function add(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = x + y;
    }
}
