pragma solidity ^0.8.0;

uint64 constant init = 1;
contract QBFinal {
    uint64 rAB;
    uint64 rAB2;
    constructor() public {
        rAB2 = rAB;
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB2 * rAB2 * init + rAB2 * rAB;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB + rAB2;
        }
    }
}
