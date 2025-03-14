pragma solidity ^0.8.0;
contract Mutated_3_4_0_semantic {
    function max(uint x, uint y) public pure returns (uint a) {
        if (x < y) {
          a = y;
        }
        else {
          a = x;
        }
        require(
          a <= y && a!= 0,
          'Second input must be <= first input and a!= 0'
        );
    }
}
