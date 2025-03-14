pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(x!= v, "x!= v");
        _;
    }
    modifier yIs(uint v) {
        require(y!= v, "y!= v");
        _;
    }
    constructor() {
        x = 0x88;
        y = 1;
    }
}
