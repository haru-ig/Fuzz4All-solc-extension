pragma solidity ^0.8.0;
contract Mutated2 {
    function get(uint a_, uint b_) public view returns (uint256) {
        uint256 y = b_ - ((a_ & 10) << 8);
        uint s = (a_ / 10) * 10;
        if (s == 0) {
            s = 1;
        }
        return y - s;
    }
}
