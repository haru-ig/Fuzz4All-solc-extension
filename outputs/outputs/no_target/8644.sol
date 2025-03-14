pragma solidity ^0.8.0;
contract MutatedCode {
    constructor(uint256 x) public { x += 7; }
}

pragma solidity ^0.8.0;
contract InconsistentBlocks {
    constructor(uint256 x_, uint256 y_) public {

        x_ += y_;
        x_ = (y_ < 3)? 1 : x_;
    }
}
