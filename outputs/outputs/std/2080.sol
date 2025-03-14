pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated3 {
   function set(uint x, uint index_2d) public pure { require(x <= 2**32); }
   function get(uint index_2d) public view returns (uint a) {
        require(index_2d < 2**32);
        a = 2**32;
    }
   function mul(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        uint r = uint(x) * uint(y);
        require(uint(r) / uint(y) * uint(y) == a);
        a = r;
    }
   function div(uint x, uint y) public view returns (uint a) { require(x < 2**32 && y > 0); a = x / y; a = a % 1_000_000; }
   function add(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = x + y;
    }
}
contract Array_equivalent_32Mutated4 {
   function set(uint x, uint index_2d) public pure { require(x <= 2**32); }
   function get(uint index_2d) public view returns (uint a) {
        require(index_2d < 2**32);
        a = 2**32;
    }
   function mul(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        uint r = uint(x) * uint(y);
        require(uint(r) / uint(y) * uint(y) == a);
        a = r;
    }
   function div(uint x, uint y) public view returns (uint a) { require(x < 2**32 && y > 0); a = x / y; a = a % 1_000_000; }
   function add(uint x, uint y) public view returns (uint a)
