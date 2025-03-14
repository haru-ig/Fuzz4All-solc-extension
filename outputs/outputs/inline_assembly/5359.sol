pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    uint rAB;
    uint rAB2;
    uint xAB;
    uint yAB;
    constructor () public {
        rAB = 250;
        rAB2 = 375;
        yAB = 445;
        xAB = 565;
        rAB2 = rAB2 - rAB;
        for (uint x = 0; x < 1000; x++) {
            rAB2 = rAB2 - rAB;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB + rAB2 - rAB2 + rAB2 + rAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            xAB = xAB - xAB2 + xAB2 - xAB2 + xAB2 + xAB2 + xAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            yAB = yAB + yAB2 + yAB3 + yAB2;
        }
    }
}
