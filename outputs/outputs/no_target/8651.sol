pragma solidity ^0.8.0;
contract InconsistentBlocks2 {
    function f() internal view returns (uint256 x_) {
        x_ = uint256(x_) > uint256(-1);
        x_ = x_ <= uint256(-1);
        uint256 y_;
        if (uint256(x_) + 1 == x_){
        y_ = uint256(-1);
        y_ = y_;
        if (x_ == 1){y_ = uint256(x_);x_ = 2;}
        }
    }
}
