pragma solidity ^0.8.0;
contract Mutated {
    function get(uint256 a_, uint256 b_) public view returns (int32) {
        int32 x = b_ ^ (int256(a_) >> 8);
        int32 m = x % 100;
        int32 n = x / 100;
        x = (n * 100) + m;
        return x;
    }
}
