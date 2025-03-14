pragma solidity ^0.8.0;
contract MutateNeg {
    uint x;
    uint y;
    constructor() {
        x = 0xDEADBEEF;
        y = 0;
        require(neg(y));
    }
}
