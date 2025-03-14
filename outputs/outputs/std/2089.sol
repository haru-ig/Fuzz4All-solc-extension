pragma solidity ^0.8.0;
contract Mutated_2_3_0 {
   function mul(uint x, uint y) public pure returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = uint(x) * uint(y);
    }
}
