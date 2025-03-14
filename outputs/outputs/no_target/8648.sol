pragma solidity ^0.8.0;
contract InconsistentBlocks {
    constructor(uint256 x_, uint256 y_) public {
        x_ += y_ + 7;
        x_ = ((x_ > -3) == (y_ < 3))? 1 : x_;
    }
}
program(MutatedCode);

pragma solidity ^0.8.0;
contract MutatedCode {

    constructor(uint256 x) public { x; set(); }

    function set() public { return; }
}
contract InconsistentBlocks {

    constructor(uint256 x_, uint256 y_) public { x_, y_; set(); }

    function set() public { return; }
}
