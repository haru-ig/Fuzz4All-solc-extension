pragma solidity ^0.8.0;
contract Test {
    uint rAB;
    constructor() public {
        rAB = Init;
        for (uint256 x = 0; x < 1000; x++) {
            rAB = rAB * rAB * 2 + rAB;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB = rAB + rAB;
        }
    }
}
