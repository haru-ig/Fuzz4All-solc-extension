pragma solidity ^0.8.0;
contract D {
    uint256[5] b;
    uint x;
    uint256 y;
    constructor(uint256[5] calldata c) public {
        b = c;
    }
    function setX(uint x_) public {
        x = x_;
    }
}
