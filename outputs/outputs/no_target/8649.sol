pragma solidity ^0.8.0;
contract InconsistentBlocks {
    function f(uint256 x) internal view returns (uint256 x_) {
        x_ = x;
        if (x < 3){
        x_ = 1;
        }
        x_ = (x_ < 3)? 1 : x_;
    }
}
