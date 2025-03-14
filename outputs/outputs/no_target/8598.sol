pragma solidity ^0.8.0;
contract Old1 {
    function get() public pure returns (uint256) {
        return (10 * 10);
    }
}

contract Old3 {
    function get(uint256 a_, uint256 b_) public pure returns (uint256) {
        require(a_ > 0 &&
            b_ > 0 &&
            a_ >= b_);
        return (a_ * b_) - (10 * 10);
    }
}
