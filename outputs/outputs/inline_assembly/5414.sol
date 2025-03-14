pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Gen {
    uint internal rBc2;
    constructor () public {
        rBc2 = 0x10000000000000000000000000000000000000000;
        for (uint x = 0; x < 20000; x++) {
            rBc2 = rBc2 + x;
        }
    }
}
