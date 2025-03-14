pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() {
        calldata selfDestructAddress1 = bytes(byte"0x");
        calldata selfDestructAddress2 = bytes(byte"0x");
        selfdestruct(selfDestructAddress1);
        selfdestruct(selfDestructAddress2);
    }
}
