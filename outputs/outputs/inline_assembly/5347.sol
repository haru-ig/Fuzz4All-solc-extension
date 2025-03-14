pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;
    uint public rAB2;
    uint public rAB;
    constructor () public {
        uint256 z = rAB2 = 500;
        uint256 z2 = rAB = z;
        for (uint x = 0; x < 1000; x++) {
            z = z + z2 - z2 - z2 - z2 - z2 - z2 - z2;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = z + z2 - z2;
        }
        rAB = rAB2 - z2 + z2;
     }
    }
}
