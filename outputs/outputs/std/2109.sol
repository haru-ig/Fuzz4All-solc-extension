pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
   function min(uint x, uint y) public pure returns (uint a) {
        require(x < y, "First input must be < second input");
        return a = x < y? x : y;
    }
}
