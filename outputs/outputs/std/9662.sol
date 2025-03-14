pragma solidity ^0.8.0;
contract MutateBigNeg18 {
    uint256 public x;
    constructor() {
        x = 1234567891292146170671885212;
        x += -18857951553178139272;
    }
}
