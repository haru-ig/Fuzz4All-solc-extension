pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint internal rBc3;
    uint internal rBc4;
    constructor () public {
        rBc3 = 17;
        rBc4;
        for (uint x; x <= 0; x--) {
            rBc3 += x;
            rBc4 = rBc3 + x;
        }
    }
}
