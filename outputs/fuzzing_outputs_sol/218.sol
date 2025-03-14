pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() {
        address payable selfDestructAddress1 = payable(address(0x00));
        selfdestruct(address(selfDestructAddress1));
    }
}
