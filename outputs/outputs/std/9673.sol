pragma solidity ^0.8.0;
contract MutateBigNeg15 {
    uint256 public x;
    constructor() {
        x = -0xFFFFF;
    }
}
