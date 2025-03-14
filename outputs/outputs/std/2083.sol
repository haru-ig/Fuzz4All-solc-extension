pragma solidity ^0.8.0;
contract Mutated_1_2_2 {
   function mul(uint x, uint y) public view returns (uint a) {
        require(x < 2**32 && y < 2**32);
        a = uint(x) * uint(y);
    }
}
