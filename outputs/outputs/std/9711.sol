pragma solidity ^0.8.0;
contract MutateNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(y == 0x3, "y == 0");
        _;
    }
    modifier yIs(uint v) {
        require(x == 0x2, "x == 0");
        _;
    }
    constructor() {
        x = 0xFF;
        y = 0x2;
    }
}
