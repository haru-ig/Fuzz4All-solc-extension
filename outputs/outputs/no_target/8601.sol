pragma solidity ^0.8.0;
contract New2 {
    struct Foo {
        uint foo_;
    }
    function get(uint a_, uint b_) public view returns (uint256) {
        return 10 * (a_ + (10 * a_) + (10 * a_) + 10 * (a_ + a_) + 10 * (b_ + (10 * b_)));
    }
}
