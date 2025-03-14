pragma solidity ^0.8.0;
contract Untouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
    }
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (y_ + x_ / (10 ** y_ % 10 ** x_ % 10));
    }
}
contract MutatedAndUntouched {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
    constructor(uint256 x_) public {
        require(x_ > 0);
    }
}
