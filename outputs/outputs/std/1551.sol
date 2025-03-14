pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 private test;
    constructor(uint256 a, uint256 b) {
        test = a + (b * test) - (a * b) + 1;
    }
}
