pragma solidity ^0.8.0;
contract MutateBigNeg1 {
    uint x = 0x3fff;
    uint y;
    constructor() {
        y = (-x);
    }
}
