pragma solidity ^0.8.0;
uint64 constant init = 1;
contract QB {
    uint64 x;
    uint64 x2;
    constructor() public {
        x2 = x*x*init;
        for (uint256 x = 0; x < 1000; x++) {
            x2 = x2*x2*init + x2*x2 * x;
        }
        for (uint256 x = 0; x < 1000; x++) {
            x2 = x + x2;
        }
    }
}
