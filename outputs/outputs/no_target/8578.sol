pragma solidity ^0.8.0;
contract New {
    function get(uint a, uint b) public view returns (uint) {
        address a_ = new Old().get(a, b);
        return a_;
    }
}
