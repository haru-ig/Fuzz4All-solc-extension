pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
    function min(uint x, uint y) public pure returns (uint a) {
        a = x < y? y : x;
        require(a <= y, "Second input must be <= first input");
    }
}
