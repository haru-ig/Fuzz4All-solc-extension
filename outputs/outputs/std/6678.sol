pragma solidity ^0.8.0;
contract Mutate8 {
    uint256 z_;
    uint256[] x_;
    uint q_;

    constructor() public {
        q_ = 15;
        for(uint256 i=1; i<q_; i++) {
            x_[i] = 42;
        }
    }

    function modify(uint k) public {
        z_ += x_[k];
        x_[k] = q_;
        x_[k-1] = 42;
    }

    function getZ() public view returns ( uint256 ) {
        return z_;
    }
}
