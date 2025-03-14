pragma solidity ^0.8.0;
contract MutatedCode {
    constructor(uint256 x) public { x += 42; }
}
contract InconsistentBlocks {
    constructor(uint256 x_, uint256 y_) public {
        x_ += y_;
        x_ = (y_ < 5)? 2 : x_;
    }
}
