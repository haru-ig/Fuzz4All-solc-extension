pragma solidity ^0.8.0;
contract Qb {
    uint constant Init = 2;
    uint xBb;
    constructor () public {
        xBb = Init;
        xBb *= Init + Init + Init;
        for (uint x = 0; x < 10000; x++) {
            xBb = Init;
        }
        for (uint x = 0; x < 10000; x++) {
            xBb *= rBb;
        }
    }
}
