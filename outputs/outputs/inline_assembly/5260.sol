pragma solidity ^0.8.0;
contract Q {
    uint32 public iv;
    uint32 constant c = 1;
    constructor() public {
        iv += c * 30;
    }
}
