pragma solidity ^0.8.0;
contract C {
    mapping (uint => uint) public a;
    function get(uint a_) public view returns (uint b_) {
        b_ = a_;
        uint p = a_[a_];
        a_[a_] = a_ + 2;
        b_ += 2;
        if (p < 50) b_ += 3;
    }
}
