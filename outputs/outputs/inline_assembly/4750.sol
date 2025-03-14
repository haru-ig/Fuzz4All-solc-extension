pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;
    uint256 h;
    uint8 w;
    uint8 x = 255;
    constructor() { if( h > 0x128 && ( ( (h & 255) == x) || ( w == 6))) isInitialized = true; }
}
