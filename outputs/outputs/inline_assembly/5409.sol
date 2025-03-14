pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint internal rBc2;
    constructor () public {
        rBc2 = 17;
        for (uint x = 0; x < 20000; x++) {
            rBc2 = rBc2 + x;
        }
    }
}
