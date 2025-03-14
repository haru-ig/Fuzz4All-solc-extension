pragma solidity ^0.8.0;
contract MutateNeg3 {
    MutateNeg2 c;
    uint x = 0xDEADBEEF;
    uint y = 0xABCDABBE;

    constructor() {
        c = new MutateNeg2();
    }
}
