pragma solidity ^0.8.0;
contract NewInconsistentBlocks {
    function f(uint256 x) internal view returns (uint256 x_) {
        x_ = x;
        unchecked {
            x_ = (x_ < 3)? 1 : x_;
        }
    }
    function mutatedF(uint256 x) internal mutates {
        x = x;
        unchecked {
            x = (x < 3)? 1 : x;
        }
    }
}
