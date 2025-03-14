pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback2 {
    constructor() {
        address payable selfDestructAddress1 = payable(address(0x00));
        address payable selfDestructAddress2 = payable(address(0x00));
        selfdestruct(selfDestructAddress1);
        selfdestruct(selfDestructAddress2);
    }
}
