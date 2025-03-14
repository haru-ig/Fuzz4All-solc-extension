pragma solidity ^0.8.0;
contract Mutated_2_3_3 {
   function min(uint x, uint y) public pure returns (uint a) {
        require(x >= y, "First input must be >= second input");
        return a = uint(x < y? x : y);
    }
}
