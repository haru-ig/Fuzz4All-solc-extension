pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 2;
    uint rAB;

    constructor () public {
        rAB = Init;
        rAB += Init + Init + Init + Init + Init + Init + Init + Init + Init;
        for (uint x = 0; x < 1000; x++) {
            rAB = Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB + Init + Init + Init + Init + Init + Init + Init + Init + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB += Init;
            rAB += Init + Init + Init + Init + Init + Init;
        }
    }
}
