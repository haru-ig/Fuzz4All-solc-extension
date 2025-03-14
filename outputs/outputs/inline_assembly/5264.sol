pragma solidity ^0.8.0;
uint32 constant initIV = 8;
contract Q {
    uint32 public iv;
    constructor() public {
        iv += initIV * 30;
    }
}
