pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import './MutateBc.sol';


contract MutateBc2 {
    uint internal rBc2;
    constructor () public {
        rBc2 = 888;
        for (uint x = 0; x < 20000; x++) {
            rBc2 = rBc2 + x;
        }
    }
}
