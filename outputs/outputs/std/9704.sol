pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    constructor() {
        x = -0x7ffffff;
        y = 2;
    }
}
pragma solidity ^0.8.0;
