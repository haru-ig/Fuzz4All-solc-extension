pragma solidity ^0.8.0;
contract Mutated {
    function get() public view returns (uint) {
        uint a_ = 100;
        uint b_ = 1000;
        a_ *= b_;
        a_ += (a_ / 4);
        return a_;
    }
}
