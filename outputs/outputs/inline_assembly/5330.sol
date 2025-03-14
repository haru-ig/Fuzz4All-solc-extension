pragma solidity ^0.8.0;
uint constant Init = 1;
contract QB {
    uint rAB;
    uint rAB2;
    constructor() public {
        rAB2 = rAB;
        for (uint256 x = 0; x < 1000; x++) {
            Init = Init * Init;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB2 * Init;
            rAB2 = rAB2 * Init + rAB2 * Init;
            rAB2 = rAB2 * Init + rAB2 * Init + rAB2 * Init;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB + rAB2 * Init + rAB2 * Init + rAB2 * Init + rAB2 * Init;
        }
    }
}
