pragma solidity ^0.8.0;
contract Contract1 {
    uint a;
    uint b;
    uint256 x;

    function contract1(uint a_, uint b_, uint256 x_) {
        a = a_;
        b = b_;
        x = x_;
    }

    function returnVar1() public view returns (uint a_, uint b_, uint256 x_) {
        a_ = a;
        b_ = b;
        x_ = x;
    }
