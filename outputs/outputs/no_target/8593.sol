pragma solidity ^0.8.0;
contract Old2 {
    function get(uint a_, uint b_) public view returns (uint256) {
        return (a_ * b_) - (10 * 10);
    }
}
