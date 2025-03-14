pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;
    uint256 h;
    uint8 w;
    constructor() { if( h > 0x128 && ( ( (h & 255) == 255) || ( w == 6))) isInitialized = true; }
}
