pragma solidity ^0.8.0;

contract Example1 {
    uint8 public x = 234;
    uint public y = 2369968;
    constructor() public {
        x = x + x + x - x + x - y - y;
    }
}
