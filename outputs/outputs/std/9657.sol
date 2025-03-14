pragma solidity ^0.8.0;
contract MutateBigNeg17 {
    constructor() {
        uint256 x = 1e17;
        x += 1e17;
    }
}
