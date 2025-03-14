pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 2;
    uint rAB;
    uint rAB2;
    constructor () public {
        rAB = rAB2;
        rAB += rAB2 + rAB2 + Init + Init + Init + Init + Init + Init + Init;
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB2 = rAB2 + rAB;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB + rAB2 + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB2 = rAB2 + rAB2;
            rAB = rAB + rAB2 + Init + Init + Init + Init + Init;
        }
    }
}
