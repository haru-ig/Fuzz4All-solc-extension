pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint internal rBc5;
    uint internal rBc6;
    constructor () public {
        rBc5 = 19;
        rBc6 = 20;
        for (uint x; x < 20000; x++) {
            rBc5 += x;
            rBc6 = rBc5 + x;
        }
    }
}
