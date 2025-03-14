pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    constructor() {
        x = -0x8000000000000000;
        y = -1;
    }
}
