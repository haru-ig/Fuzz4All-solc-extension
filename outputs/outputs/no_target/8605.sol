pragma solidity ^0.8.0;
contract Mutated {
    function get(uint a_, uint b_) public view returns (uint256) {
        uint256 x = b_ ^ (a_ & 10) << 8;
        uint256 m = (x / 10) * 10;
        x -= m;
        return x;
    }
}
