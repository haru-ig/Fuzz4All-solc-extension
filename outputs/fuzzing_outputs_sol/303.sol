pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_1 {
    constructor() {}
    receive() external payable {
        fallback();
        fallback();
    }
}
