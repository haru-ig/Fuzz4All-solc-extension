pragma solidity ^0.8.0;
contract Qb {
    uint constant Init = 2;
    uint rBb;
    constructor () public {
        rBb = Init;
        uint n = Init;
        for (uint x = 0; x < 100; x++) {
            rBb = Init;
            n = Init;
            for (uint y = 0; y < 100; y++) {
                rBb = rBb + Init + Init;
            }
        }
        rBb = rBb + n + n + n;
    }
}
