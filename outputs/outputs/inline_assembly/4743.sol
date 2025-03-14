pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;

    uint256 h;
    constructor() { if( h > 0x128) isInitialized = true; }
}
