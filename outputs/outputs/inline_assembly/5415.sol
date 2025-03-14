pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint internal rBc;
    constructor () public {
        uint  x;
        rBc;
        for (x; x < 20000; x++) {
            rBc += x;
        }
    }
}
