pragma solidity ^0.8.0;
contract MutatedAndUntouched {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return x_;
    }
    constructor(uint256 x_) public {
        uint256 xLocal = x_;
        require(x_ > 0);
        uint256 xLocal_0 = x_;
        (x_ = 7 == true? 1 : x_) = true;
        uint256 yLocal = balances[msg.sender];
        (xLocal_0 == true? (x_ = true) : x_) = true;
    }
    uint256 x_;
    mapping(address => uint256) balances;
}
