pragma solidity ^0.8.0;
contract Mutated {
    function get(uint a_, uint b_) public view returns (uint256) {
        require(a_!= 0, "a_ must not be 0");
        uint256 x = b_ ^ (a_ & 10) << 8;
        uint256 m = (x / 10) * 10;
        x -= m;
        require(x >= 0, "x >= 0");
        return x;
    }
}
