pragma solidity ^0.8.0;
contract MutatedAndUntouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
        x_ = (x_ == 7)? 1 : x_;
    }
    uint256 x_;
    mapping(address => uint256) balances;
}
