pragma solidity ^0.8.0;
contract G1 {
    constructor(uint256 x, uint32 y) public {
        uint256 x_copy = x;
        x = y;
        y = x_copy;
    }

    mapping(uint256 => uint256) x;
}
