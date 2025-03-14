pragma solidity ^0.8.0;
contract Array_equivalent_32_nonmutator_5 {
   uint16[] public a;
   function set(uint16 x, uint16 index_2d) public pure { require(x <= 2 ** 16); }
   function get(uint index_2d) public view returns (uint16 a) {
        require(index_2d < 2 ** 16);
        a = 2 ** 16;
   }
   function add(uint16 x, uint16 y) public pure returns (uint16 z) { return x + y; }
   function sub(uint16 x, uint16 y) public pure returns (uint16 z) { return x - y; }
   function div(uint16 x, uint16 y) public pure returns (uint16 z) {
        require(y!= 0);
        return x / y;
   }
   function mul(uint16 x, uint16 y) public pure returns (uint16 z) {
        a = a * y; z = a & (2 ** 16 - 1);
        a >>= 16;
   }
}
