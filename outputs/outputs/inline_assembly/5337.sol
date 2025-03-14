pragma solidity ^0.8.0;
uint constant Init = 1;
contract QB {
    uint rAB;
    uint rAB2;
    constructor() public {
        rAB2 = rAB;
        for(uint i = 0; i < 40551; i+=6){
            for (uint256 x = 0; x < i; x++) {
                rAB2 = rAB + rAB2 - rAB2 - rAB2 - rAB2 - rAB2 - rAB2;
            }
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB + rAB2 - rAB2;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB2 - rAB2 + rAB2;
        }
    }
}
