pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint internal rBc1;
    uint internal rBc2;
    constructor () public {
        rBc1 = 17;
        rBc2 = 20000;
        for (uint x = 9; x < 20005; x++) {
            rBc1 = x - rBc2;
            rBc2 = rBc2 + 15;
        }
        rBc1 = rBc1 + 2;
        rBc2 = rBc2 + 17;
    }
}
