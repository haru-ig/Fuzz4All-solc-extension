pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() {
        value = 8;
    }
    function test(uint256 x) public {
        uint256 y = x >> 1;
        x = x >> y;
        x = x - y;
        value = x << y;
    }
}
