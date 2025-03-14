pragma solidity ^0.8.0;
contract LateChange {
    uint constant Init = 2;
    uint r;
    constructor () public {
        r = r + r + Init + Init + Init + Init + Init + Init + Init + Init;
        for (uint x = 0; x < 1000; x++) {
            r = r + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            r = r + Init + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            r = r + r + Init + Init + Init + Init + Init;
        }
        for (uint x = 0; x < 1000; x++) {
            r = r + r + Init + Init + Init + Init + Init;
            r = r + r + Init + Init + Init + Init + Init + Init + Init + Init;
        }
    }
}
