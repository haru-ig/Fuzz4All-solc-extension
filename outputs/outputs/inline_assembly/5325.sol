pragma solidity ^0.8.0;
uint64 constant init = 1;
contract QBTrivial {
    uint64 rAB;
    uint64 rAB2 = 1;
    constructor() public {
        rAB2 = rAB * init;
        for (uint256 x = 0; x < 25; x++) {
            rAB2 = rAB2 * rAB2 + rAB2 * rAB;
        }
    }
}
