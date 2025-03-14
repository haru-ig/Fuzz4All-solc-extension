pragma solidity ^0.8.0;
contract Array_equivalent_32 {
   uint[10] z;
   function set(uint i, uint z_) public pure { z[i] = z_; }
   function get(uint i) public view returns (uint arr_equivalent_32[10] memory) {
        return arr_equivalent_32[10](z);
    }
}


contract Array_equivalent_32
{
   function set(uint i, uint z_0) public { z[i] = z_0; }
   function get(uint i) public view returns (uint arr_equivalent_32[10] memory) {
        return arr_equivalent_32[10] (z[i]);
    }
}
