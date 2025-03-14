pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    uint32 sAB;
    uint32 sAB2;
    constructor () public {
        sAB = sAB2;
        for (uint x = 0; x < 1000; x++) {
            sAB = sAB + sAB2 - sAB2 - sAB2 - sAB2 - sAB2 - sAB2 - sAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            sAB = sAB + sAB2 - sAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            sAB = sAB2 - sAB2 + sAB2;
        }
    }
}
