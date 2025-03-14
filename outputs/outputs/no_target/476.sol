pragma solidity ^0.8.0;
contract Contract {
    uint256 public x_ = 0;
    uint y_;
    x_ = Semantic.x_;
    y_ = x_;
    function f() {
        x_ = x_;
        Semantic.x_ = x_;
    }
}
