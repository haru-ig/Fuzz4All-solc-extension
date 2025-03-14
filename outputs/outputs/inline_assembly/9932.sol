pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    fallback function() external {
        uint256 x = 6;
        value = x;
        value2 = value;
    }
}
