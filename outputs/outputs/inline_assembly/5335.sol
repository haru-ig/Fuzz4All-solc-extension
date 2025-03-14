pragma solidity ^0.8.0;
contract QB2 is QB{
    uint rAB3;
    uint rAB4;
    constructor() public {
        rAB3 = rAB + rAB2 - rAB4;
        for (uint256 x = 0; x < 1000; x++) {
            rAB3 = rAB3 * 10;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB3 = rAB3 + uint(rAB2+x) - rAB4 + uint(rAB4)+x - uint(rAB4);
        }
    }
}
