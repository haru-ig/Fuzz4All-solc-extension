pragma solidity ^0.8.0;
contract Untouched {
    constructor(uint256 x_) public {
        require(x_ > 0);
        (x_,) = uint2pair(uint256(uint2uint16(x_)), uint16(x_ < 2**16? 1 : uint2uint16(x_)));
    }
    uint256 x_;
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
}
contract MutatedAndUntouched {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        (x_,) = uint2pair(uint256(uint2uint16(x_)), uint16(x_ < 2**16? 1 : uint2uint16(x_)));
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
    constructor(uint256 x_) public {
        require(x_ > 0);
    }
}
