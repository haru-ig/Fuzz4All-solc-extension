pragma solidity ^0.8.0;
contract Untouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
        x_ = (x_ == 7)? 1 : x_;
    }
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (y_ + x_ / (10 ** y_ % 10 ** x_ % 10));
    }
    uint256 x_;
    mapping(address => uint256) balances;
}

pragma solidity ^0.8.0;
contract MutatedAndUntouched {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
    constructor(uint256 x_) public {
        require(x_ > 0);
        uint256 xLocal = x_;
        x_ = (x_ == 7)? 1 : x_;
        uint256 yLocal = balances[msg.sender];
    }
    uint256 x_;
    mapping(address => uint256) balances;
}
