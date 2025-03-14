pragma solidity ^0.8.0;
contract MutateNegativeBigNeg15 {
    uint256 public x;
    uint256 y;
    constructor() {
        x = -0xFFFFF;
        y = -0xFFFFF;
    }
}
