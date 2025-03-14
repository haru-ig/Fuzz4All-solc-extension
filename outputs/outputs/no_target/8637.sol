pragma solidity ^0.8.0;
contract Untouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
        x_ = (x_ == 7)? 1 : x_;
    }
    function log() public pure {
        uint256 x = x_;
        log(x);
        uint256 xLocal = x_;
    }
    uint256 x_;
    event e(uint256 x_);
}
contract MutatedAndUntouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
        uint256 xLocal = x_;
        x_ = (x_ == 7)? 1 : x_;
        uint256 yLocal = balances[msg.sender];
    }
    uint256 x_;
    event e(uint256 x_);
    mapping(address => uint256) balances;
}
