pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint internal rBc2;
    constructor () public {
        uint x = 17;
        rBc2 = 0;
        for (uint x = 0; x < 20000; x++) {
            rBc2 = rBc2 + x;
        }
    }
}
