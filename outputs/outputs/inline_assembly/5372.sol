pragma solidity ^0.8.0;
contract QC {
    uint constant Init = 2;
    uint rAC;
    constructor () public {
        rAB = Init;
        rAC = Init;
        rAC += Init + Init + Init + Init + Init + Init + Init + Init + Init + Init;
        for (uint x = 0; x < 1000; x++) {
            rAB = Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAC = rAC + Init + Init + Init + Init + Init + Init + Init + Init + Init + Init + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB + Init;
            rAC = rAC + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            rAC += Init;
            rAB = rAB + Init;
        }
    }
}
