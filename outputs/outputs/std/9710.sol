pragma solidity ^0.8.0;
contract MutateZero {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(x == 0x0, "x == 0");
        _;
    }
    modifier yIs(uint v) {
        require(x == 0x0, "x == 0");
        _;
    }
    constructor() {
        x = 0xffffffff;
        y = 1;
    }
}
