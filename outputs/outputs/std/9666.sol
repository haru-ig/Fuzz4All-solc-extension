pragma solidity ^0.8.0;
contract MutateBigNeg19 {
    uint256 public x;
    constructor() {

        x = ~x;
    }
}
