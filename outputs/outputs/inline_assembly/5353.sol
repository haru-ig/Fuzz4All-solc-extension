pragma solidity ^0.8.0;
contract E {
    uint constant Init = 1;
    uint rAB;
    constructor () public {
        rAB = Init;
        rAB = rAB + Init;
        rAB = rAB + Init + Init;
        rAB = rAB - Init;
        rAB = rAB - Init - Init;
    }
}
