pragma solidity ^0.8.0;
contract Mutated {
    function get(uint a_, uint b_) public view returns (uint256) {
        uint256 x = b_ ^ (a_ & 10) << 8;
        uint256 m = x % 100;
        uint256 n = x / 100;
        x = (n * 100) + m;
        return x;
    }
}
