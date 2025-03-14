pragma solidity ^0.8.0;
contract MutateNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(x == 0x3, "x == 0");
        _;
    }
    modifier yIs(uint v) {
        require(x == 0x3, "x == 0");
        _;
    }
    constructor() {
        x = 0x4;
        y = 1;
    }
}
