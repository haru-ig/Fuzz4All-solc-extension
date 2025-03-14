pragma solidity ^0.8.0;
contract Qb {
    uint constant Init = 2;
    uint rBb;
    constructor () public {
        rBb = Init;
        rBb += Init + Init + Init + Init + Init + Init + Init + Init + Init;
        for (uint x = 0; x < 10000; x++) {
            rBb = Init;
        }
        for (uint x = 0; x < 10000; x++) {
            rBb = rBb + Init + Init + Init + Init + Init + Init;
        }
        for (uint x = 0; x < 10000; x++) {
            uint n = Init;
            rBb += n + n + n;
        }
    }
}
